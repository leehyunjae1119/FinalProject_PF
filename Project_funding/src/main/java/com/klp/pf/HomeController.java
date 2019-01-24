package com.klp.pf;

import java.io.File;
import java.io.FileNotFoundException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.klp.pf.dto.PF_CoinDto;
import com.klp.pf.dto.PF_PortfolioDto;
import com.klp.pf.dto.PF_ProfileDto;
import com.klp.pf.dto.PF_TechnologyDto;
import com.klp.pf.dto.PF_UserDto;
import com.klp.pf.model.biz.PF_CoinBiz;
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
	
	//파일 업로드 순서(ajax)
	   //1.dependency 2개 추가 (주석 처리해놈)
	   //2.servlet-context에서 multipartResolver 추가
	    @RequestMapping(value="/fileUpload.do")
	    @ResponseBody
	    public String fileUp(MultipartHttpServletRequest multi, HttpServletRequest request) throws FileNotFoundException {
	        // 저장 경로 설정
//	       String path=WebUtils.getRealPath(request.getSession().getServletContext(), "/profile");
	       String path="C:\\Users\\Saebak\\git\\FinalProject_PF3\\Project_funding\\src\\main\\webapp\\resources\\portfolio";
	       
	       System.out.println(path);
	       
	        File dir = new File(path);
	        if(!dir.isDirectory()){
	            dir.mkdir();
	        }
	         
	        String fileName=null;
	        
	        Iterator<String> files = multi.getFileNames();
	        while(files.hasNext()){
	            String uploadFile = files.next();
	                         
	            MultipartFile mFile = multi.getFile(uploadFile);
	            fileName = mFile.getOriginalFilename();
	            
	            //파일이름 유저 주키로 지정
	            System.out.println("실제 파일 이름 : " +fileName);
	            try {
	                mFile.transferTo(new File(path+"/"+fileName));
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        return path+"/"+fileName;
	    }
	    
	    @RequestMapping(value="/imageUpload.do")
	    @ResponseBody
	    public String imageUp(MultipartHttpServletRequest multi, HttpServletRequest request) throws FileNotFoundException {
	        // 저장 경로 설정
//	       String path=WebUtils.getRealPath(request.getSession().getServletContext(), "/profile");
	       String path="C:\\Users\\Saebak\\git\\FinalProject_PF3\\Project_funding\\src\\main\\webapp\\resources\\image";
	       
	       System.out.println(path);
	       
	        File dir = new File(path);
	        if(!dir.isDirectory()){
	            dir.mkdir();
	        }
	         
	        String fileName=null;
	        
	        Iterator<String> files = multi.getFileNames();
	        while(files.hasNext()){
	            String uploadFile = files.next();
	                         
	            MultipartFile mFile = multi.getFile(uploadFile);
	            fileName = mFile.getOriginalFilename();
	            
	            //파일이름 유저 주키로 지정
	            System.out.println("실제 파일 이름 : " +fileName);
	            try {
	                mFile.transferTo(new File(path+"/"+fileName));
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        return path+"/"+fileName;
	    }
	
	
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
		int res = pf_userBiz.insertUser(dto);
		System.out.println(res);
		//회원가입한(파트너스)계정에 프로필 테이블을 생성해준다.
		//res를 객체생성 파라미터에 넣어주는 이유는 회원 삽입 결과를 회원 시퀀스 번호로 받았기 때문이다.
		if(user_type.equals("파트너스")) {
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
		
		model.addAttribute("profiledto", profiledto);
		model.addAttribute("techdtoList", techdtoList);
		return "Partner_Profile";
	}
	//유저 계정 유형
	@RequestMapping(value="user_typeUpdate.do")
	public String user_typeUpdate() {
		return "User_TypeUpdate";
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
	public String user_infoUpdate() {
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
	public String partnerReg_infoUpdate(int profile_no, String profile_job, String profile_activity, String profile_intro) {
		PF_ProfileDto profiledto = new PF_ProfileDto(profile_no, profile_job, profile_activity, profile_intro);
		int res = pf_profileBiz.updateProfile(profiledto);
		if(res > 0) {
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
	//비밀번호 번경
	@RequestMapping(value="user_pwUpdate.do")
	public String user_pwUpdate() {
		return"User_PWUpdate";
	}
	//회원 탈퇴
	@RequestMapping(value="user_delete.do")
	public String user_delete() {
		return"User_Delete";
	}
	
	//파트너스 나의푸딩
	@RequestMapping(value="partner_mypage.do")
	public String partnermypage() {
		return "Partner_Mypage";
	}
	
	//클라이언트 나의푸딩
		@RequestMapping(value="client_mypage.do")
		public String clientrmypage() {
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
