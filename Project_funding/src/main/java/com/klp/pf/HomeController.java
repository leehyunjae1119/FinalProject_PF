package com.klp.pf;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.klp.pf.dto.PF_UserDto;
import com.klp.pf.model.biz.PF_Biz;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
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
	private PF_Biz biz;
	
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
		return "project_view";
	}

	@RequestMapping(value="/partner_list.do")
	public String partnerlist() {
		return "User_PartnerList";
	}
	@RequestMapping(value="/question.do")
	public String question() {
		return "Question";
	}
	
	@RequestMapping(value="/user_coin.do")
	public String coin() {
		return "User_Coin";
	}
	@RequestMapping(value="/user_update.do")
	public String typeupdate() {
		return "User_TypeUpdate";
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
		String page = "";
		PF_UserDto dto = biz.selectUser(user_id);
		if(dto.getUser_pw().equals(user_pw)) {
			session.setAttribute("userdto", dto);
			return "index";
		} 
		return "User_Login";
	}
	//회원가입
	@RequestMapping(value="/join.do")
	public String join() {
		return "User_Join";
	}
	//파트너 프로필
	@RequestMapping(value="partners_profile.do")
	public String partners_profile() {
		return "PartnersProfile";
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
}
