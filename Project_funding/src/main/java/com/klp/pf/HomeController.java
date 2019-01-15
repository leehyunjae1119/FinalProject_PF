package com.klp.pf;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
	
}
