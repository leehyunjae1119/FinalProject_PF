package com.klp.pf;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.klp.pf.dto.PF_CareerDto;
import com.klp.pf.dto.PF_CertificateDto;
import com.klp.pf.dto.PF_CoinDto;
import com.klp.pf.dto.PF_EducationDto;
import com.klp.pf.dto.PF_PortfolioDto;
import com.klp.pf.dto.PF_ProfileDto;
import com.klp.pf.dto.PF_TechnologyDto;
import com.klp.pf.dto.PF_UserDto;
import com.klp.pf.model.biz.PF_CareerBiz;
import com.klp.pf.model.biz.PF_CertificateBiz;
import com.klp.pf.model.biz.PF_CoinBiz;
import com.klp.pf.model.biz.PF_EducationBiz;
import com.klp.pf.model.biz.PF_PortfolioBiz;
import com.klp.pf.model.biz.PF_ProfileBiz;
import com.klp.pf.model.biz.PF_TechnologyBiz;
import com.klp.pf.model.biz.PF_UserBiz;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**--
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	//-------------------------------------------------------
	@Autowired
	private PF_UserBiz pf_userBiz;
	@Autowired
	private PF_ProfileBiz pf_profileBiz;
	@Autowired
	private PF_PortfolioBiz pf_portfolioBiz;
	@Autowired
	private PF_TechnologyBiz pf_technologyBiz;
	@Autowired
	private PF_CoinBiz pf_coinBiz;
	@Autowired
	private PF_CareerBiz pf_careerBiz;
	@Autowired
	private PF_EducationBiz pf_educationBiz;
	@Autowired
	private PF_CertificateBiz pf_certificateBiz;
	
	@RequestMapping(value="/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/project_insert.do")
	public String insert() {


		return "Project_Insert";
	}
	
	@RequestMapping(value="/project_list.do")
	public String list() {
	

		return "Project_List";

	}

	@RequestMapping(value="/project_view.do")
	public String view() {
		return "Project_View";
	}

	@RequestMapping(value="/partner_list.do")
	public String partnerlist() {
		return "User_PartnerList";
	}
	
	@RequestMapping(value="/question.do")
	public String question() {
		return "Question";
	}
	//코인
	@RequestMapping(value="/user_coin.do")
	public String coin(HttpServletRequest request,HttpSession session,Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		
		int amount;
		if(request.getParameter("amount")!=null) {
		amount = Integer.parseInt(request.getParameter("amount"));
		pf_coinBiz.coin_insert(userdto.getUser_no(), amount, "충전");
		}
		
		List<PF_CoinDto> list = pf_coinBiz.coin_selectAll(userdto.getUser_no());
		int coin_charge=0;
		//int coin_use=0;
		
		
		coin_charge=pf_coinBiz.coin(userdto.getUser_no(), "충전");
		//coin_use=pf_coinBiz.coin(userdto.getUser_no(), "사용");
		
		
		model.addAttribute("coinlist", list);
		model.addAttribute("coin", coin_charge);
		
		return "User_Coin";
	}
	
	
	@RequestMapping(value="/user_coin1.do")
	public String coin1(HttpServletRequest request,HttpSession session,Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		
		int amount=0;
		if(request.getParameter("amount")!=null) {
		amount = Integer.parseInt(request.getParameter("amount"));
		pf_coinBiz.coin_insert(userdto.getUser_no(), amount, "충전");
		}
		
		List<PF_CoinDto> list = pf_coinBiz.coin_selectAll(userdto.getUser_no());
		int coin_charge=0;
		//int coin_use=0;
		

		coin_charge=pf_coinBiz.coin(userdto.getUser_no(), "충전");
		//coin_use=pf_coinBiz.coin(userdto.getUser_no(), "사용");
	
		
		
		model.addAttribute("coinlist", list);
		model.addAttribute("coin", coin_charge);
		
		return "redirect:/user_coin.do";
	}
	@RequestMapping(value="/user_coinpayment.do")
	public String user_coinpayment(@RequestParam String amount, Model model) {
		model.addAttribute("amount", amount);
		return "User_CoinPayment";
	}
	
	@RequestMapping(value="/project_fundinglist.do")
	public String projectfunding() {
		return "Project_FundingList";
	}
	
	
	
	//로그인
	@RequestMapping(value="/login.do")
	public String login() {
		return "User_Login";
	}
	@RequestMapping(value="/loginCheck.do")
	public String loginCheck(String user_id, String user_pw, HttpSession session) {
		
		PF_UserDto dto = pf_userBiz.selectUser(user_id);
		if(dto.getUser_pw().equals(user_pw)) {
			session.setAttribute("userdto", dto);
			
			if(dto.getUser_email_check().equals("TRUE")) {
				return "index";
			} else {
				return "sendEmail";
			}
		} 
		return "User_Login";
	}
	@RequestMapping(value="/loginCheckAjax.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> loginCheckAjax(String user_id, String user_pw, HttpSession session){
		PF_UserDto dto = pf_userBiz.login(user_id, user_pw);
		boolean loginChk = false;
		if(dto != null){
			session.setAttribute("userdto", dto);
			loginChk = true;
		}
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("loginChk", loginChk);
		map.put("emailCheck", Boolean.parseBoolean(dto.getUser_email_check()));
		return map;
			
	}
	@RequestMapping(value="/logOut.do")
	public String logOut(String user_id, String user_pw, HttpSession session) {
		if(session!=null) {
			session.invalidate();
			session =null;
		}
		return "index";
	}
	@RequestMapping(value="/sendEmail.do")
	public String sendEmail(String user_email) {
		if(!pf_userBiz.user_sendEmail(user_email)) {
			return "error";
		} 
		return "sendEmail_result";
	
	}
	@RequestMapping(value="/emailCheck.do")
	public String emailCheck(String user_email, String code) {
		if(!pf_userBiz.user_setEmailCheck(user_email, code)) {
			return "error";
		}
		return "index";
	}

		
	
	//회원가입
	@RequestMapping(value="/join.do")
	public String join() {
		return "User_Join";
	}
	@RequestMapping(value="/joinCheck.do")
	public String joinCheck(String user_id, String user_pw, String user_email, String user_type) {
		PF_UserDto dto = new PF_UserDto(user_id, user_pw, user_email, user_type);
		//유저 넘버를 반환받는다.
		int res = pf_userBiz.insertUser(dto);
		System.out.println(res);
		//회원가입한(파트너스)계정에 프로필 테이블을 생성해준다. - 클라이언트도 생성해준다.(자기소개 떄문에)
		//res를 객체생성 파라미터에 넣어주는 이유는 회원 삽입 결과를 회원 시퀀스 번호로 받았기 때문이다.
		if(user_type.equals("파트너스") || user_type.equals("클라이언트")) {
			PF_ProfileDto profileDto = new PF_ProfileDto(res);
			pf_profileBiz.insertProfile(profileDto);
		}
		//회원가입 성공시 로그인 페이지로 이동
		if(res > 0) {
			return "User_Login";
		}
		return "User_Join";
	}
	//파트너 프로필
	@RequestMapping(value="partners_profile.do")
	public String partners_profile(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		List<PF_TechnologyDto> techdtoList = pf_technologyBiz.selectTech(profiledto.getProfile_no());
		List<PF_CareerDto> careerdtoList = pf_careerBiz.selectCareer(profiledto.getProfile_no());
		List<PF_EducationDto> educationdtoList = pf_educationBiz.selectEducation(profiledto.getProfile_no());
		List<PF_CertificateDto> certificatedtoList = pf_certificateBiz.selectCertificate(profiledto.getProfile_no());

		model.addAttribute("profiledto", profiledto);
		model.addAttribute("techdtoList", techdtoList);
		model.addAttribute("careerdtoList", careerdtoList);
		model.addAttribute("educationdtoList", educationdtoList);
		model.addAttribute("certificatedtoList", certificatedtoList);
		
		if(techdtoList.size()==0) {
			String techList = null;
			model.addAttribute("techList", techList);
		} else {
			String techList = "techList";
			model.addAttribute("techList", techList);
		}
		if(careerdtoList.size()==0 && educationdtoList.size()==0 && certificatedtoList.size()==0) {
			String careerList = null;
			model.addAttribute("careerList", careerList);
		} else {
			String careerList = "careerList";
			model.addAttribute("careerList", careerList);
		}
		
		return "Partner_Profile";
	}
	//유저 계정 유형
	@RequestMapping(value="user_typeUpdate.do")
	public String user_typeUpdate(HttpSession session) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		if(userdto.getUser_uptype()!=null) {
			return "User_TypeWait";
		}
		return "User_TypeUpdate";
	}
	//유저 계정 유형 변경 신청
	@RequestMapping(value="user_typeUpdateAction.do")
	public String user_typeUpdateAction(HttpSession session, String select_type) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		userdto.setUser_uptype(select_type);
		pf_userBiz.updateUser_type(userdto);
		return "User_TypeWait";
	}
	//지원내역
	@RequestMapping(value="project_supportList.do")
	public String project_supportList() {
		return "Project_SupportList";
	}
	//진행중인 프로젝트
	@RequestMapping(value="project_ing.do")
	public String fundingProject_ing() {
		return "Project_IngList";
	}
	//완료한 프로젝트
	@RequestMapping(value="project_end.do")
	public String fundingProject_end() {
		return "Project_EndList";
	}
	//기본정보 수정
	@RequestMapping(value="user_infoUpdate.do")
	public String user_infoUpdate(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		model.addAttribute("userdto", userdto);
		return"User_InfoUpdate";
	}
	//기본정보 수정
	@RequestMapping(value="user_infoUpdateAction.do")
	public String user_infoUpdateAction(HttpSession session,String user_name, String user_img, String user_sex, String user_addr, String user_birth) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		userdto.setUser_addr(user_addr);
		userdto.setUser_birth(user_birth);
		userdto.setUser_img(user_img);
		userdto.setUser_name(user_name);
		userdto.setUser_sex(user_sex);
		
		pf_userBiz.updateUser_Info(userdto);
		
		return"User_InfoUpdate";
	}
	//관심프로젝트
	@RequestMapping(value="project_likeList.do")
	public String project_likeList() {
		return"Project_LikeList";
	}
	//파트너스 정보
	@RequestMapping(value="partnerReg_info.do")
	public String partnerReg_info(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		model.addAttribute("profiledto", profiledto);
		return"PartnerReg_Info";
	}
	//파트너스 정보 수정 (자기소개 수정 포함)
	@RequestMapping(value="partnerReg_infoUpdate.do")
	public String partnerReg_infoUpdate(int profile_no, String profile_job, String profile_activity, String profile_intro,HttpSession session) {
		PF_ProfileDto profiledto = new PF_ProfileDto(profile_no, profile_job, profile_activity, profile_intro);
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		String user_type = userdto.getUser_type();
		int res = pf_profileBiz.updateProfile(profiledto);
		if(res > 0) {
			if(user_type.equals("클라이언트")) {
				return "redirect:client_mypage.do"; 
			} 
			return "redirect:partners_profile.do"; 
		} 
		return "redirect:partnerReg_info.do";
	}
	//자기소개
	@RequestMapping(value="partnerReg_about.do")
	public String partnerReg_about(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		model.addAttribute("profiledto", profiledto);
		return"PartnerReg_About";
	}
	//포트폴리오
	@RequestMapping(value="partnerReg_portfolio.do")
	public String partnerReg_portfolio() {
		return "PartnerReg_Portfolio";
	}
	//포트폴리오 삽입
	@RequestMapping(value="partnerReg_portfolioInsert.do")
	public String partnerReg_portfolioInsert(HttpSession session, Model model, String portfolio_title, Date portfolio_start_day
			, Date portfolio_end_day, int portfolio_participation, String portfolio_content, String portfolio_file) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		
		PF_PortfolioDto portfoliodto = new PF_PortfolioDto(profiledto.getProfile_no(), portfolio_title, portfolio_start_day
				, portfolio_end_day, portfolio_participation, portfolio_content, portfolio_file);
		int res = pf_portfolioBiz.insertPortfolio(portfoliodto);
		if(res > 0) {
			return "redirect:partners_profile.do";
		}
		return "PartnerReg_Portfolio";
	}
	
	//보유 기술
	@RequestMapping(value="partnerReg_technology.do")
	public String partnerReg_technology() {
		return"PartnerReg_Technology";
	}
	//보유 기술 삽입
	@RequestMapping(value="partnerReg_technologyInsert.do")
	public String partnerReg_technologyInsert(String tech_type, String tech_skill, String tech_exp, HttpSession session) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		
		int res = pf_technologyBiz.insertTechnology(profiledto.getProfile_no(), tech_type, tech_skill, tech_exp);
		if(res > 0 ) {
			return "redirect:partners_profile.do";
		}
		return "PartnerReg_Technology";
	}
	//보유 기술 삭제
	@RequestMapping(value="partnerReg_technologyDelete.do")
	public String partnerReg_technologyDelete(int tech_no) {
		pf_technologyBiz.deleteTechnology(tech_no);
		return "redirect:partners_profile.do";
	}
	//경력/학력/자격증
	@RequestMapping(value="partnerReg_career.do")
	public String partnerReg_career() {
		return"PartnerReg_career";
	}
	//경력/학력/자격증 등록
	@RequestMapping(value="partnerReg_careerInsert.do")
	public String partnerReg_careerInsert(HttpServletRequest request, HttpSession session
			, String career_company, String career_dept, String career_spot, String career_hiredate_year, String career_hiredate_month, String career_firedate_year, String career_firedate_month
			, String edu_name, String edu_state, String edu_major, String edu_hiredate_year, String edu_hiredate_month, String edu_firedate_year, String edu_firedate_month
			, String certificate_name, String certificate_agency, String certificate_issueddate) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());

		int careerRes = pf_careerBiz.insertCareer(profiledto.getProfile_no(), career_company, career_dept, career_spot, career_hiredate_year, career_hiredate_month, career_firedate_year, career_firedate_month);
		int educationRes = pf_educationBiz.insertEducation(profiledto.getProfile_no(), edu_name, edu_state, edu_major, edu_hiredate_year, edu_hiredate_month, edu_firedate_year, edu_firedate_month);
		int certificateRes = pf_certificateBiz.insertCertificate(profiledto.getProfile_no(), certificate_name, certificate_agency, certificate_issueddate);
		
		if(careerRes+educationRes+certificateRes == 0) {
			return "PartnerReg_career";
		}
		return "redirect:partners_profile.do";
	}
	//보유 기술 삭제
	@RequestMapping(value="partnerReg_careerDelete.do")
	public String partnerReg_careerDelete(int career_no) {
		pf_careerBiz.deleteCareer(career_no);
		return "redirect:partners_profile.do";
	}
	//보유 기술 삭제
	@RequestMapping(value="partnerReg_educationDelete.do")
	public String partnerReg_educationDelete(int edu_no) {
		pf_educationBiz.deleteEducation(edu_no);
		return "redirect:partners_profile.do";
	}
	//보유 기술 삭제
	@RequestMapping(value="partnerReg_certificateDelete.do")
	public String partnerReg_certificateDelete(int certificate_no) {
		pf_certificateBiz.deleteCertificate(certificate_no);
		return "redirect:partners_profile.do";
	}
	//비밀번호 번경
	@RequestMapping(value="user_pwUpdate.do")
	public String user_pwUpdate() {
		return"User_PWUpdate";
	}
	//회원 탈퇴
	@RequestMapping(value="user_delete.do")
	public String user_delete(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		model.addAttribute("userdto", userdto);
		return"User_Delete";
	}
	//회원 탈퇴
	@RequestMapping(value="user_deleteAction.do")
	public String user_deleteAction(HttpSession session) {
		PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
		pf_userBiz.deleteUser(userdto);
		return "redirect:logOut.do";
	}
	
	//파트너스 나의푸딩
	@RequestMapping(value="partner_mypage.do")
	public String partnermypage() {
		return "Partner_Mypage";
	}
	
	//클라이언트 나의푸딩
		@RequestMapping(value="client_mypage.do")
		public String clientrmypage(HttpSession session, Model model) {
			PF_UserDto userdto = (PF_UserDto)session.getAttribute("userdto");
			PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
			model.addAttribute("profiledto", profiledto);
			return "Client_Mypage";
		}
	//비밀번호 찾기
		@RequestMapping(value="user_findPW.do")
		public String user_findPW() {
			return"User_FindPW";
		}
	//지원자 모집중
		@RequestMapping(value="project_recruitmentList.do")
		public String project_recruitmentList() {
			return "Project_RecruitmentList";
		}
	//검수중
		@RequestMapping(value="project_inspectionList.do")
		public String project_inspectionList() {
			return "Project_InspectionList";
		}
}
