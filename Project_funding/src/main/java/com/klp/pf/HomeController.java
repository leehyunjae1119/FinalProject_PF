package com.klp.pf;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.util.WebUtils;

import com.klp.pf.dto.PF_ApplicantDto;
import com.klp.pf.dto.PF_BoardDto;
import com.klp.pf.dto.PF_CareerDto;
import com.klp.pf.dto.PF_CertificateDto;
import com.klp.pf.dto.PF_CommentDto;
import com.klp.pf.dto.PF_EducationDto;
import com.klp.pf.dto.PF_EvaluationDto;
import com.klp.pf.dto.PF_MessageDto;
import com.klp.pf.dto.PF_PortfolioDto;
import com.klp.pf.dto.PF_ProfileDto;
import com.klp.pf.dto.PF_TechnologyDto;
import com.klp.pf.dto.PF_UserDto;
import com.klp.pf.model.biz.PF_ApplicantBiz;
import com.klp.pf.model.biz.PF_BoardBiz;
import com.klp.pf.model.biz.PF_CareerBiz;
import com.klp.pf.model.biz.PF_CertificateBiz;
import com.klp.pf.model.biz.PF_CoinBiz;
import com.klp.pf.model.biz.PF_CommentBiz;
import com.klp.pf.model.biz.PF_EducationBiz;
import com.klp.pf.model.biz.PF_EvaluationBiz;
import com.klp.pf.model.biz.PF_InvestBiz;
import com.klp.pf.model.biz.PF_MessageBiz;
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

	/**
	 * -- Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}

	// -------------------------------------------------------
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
	@Autowired
	private PF_MessageBiz pf_messageBiz;
	@Autowired
	private PF_BoardBiz pf_boardBiz;
	@Autowired
	private PF_InvestBiz pf_investBiz;
	@Autowired
	private PF_CommentBiz pf_commentBiz;
	@Autowired
	private PF_EvaluationBiz pf_evaluationBiz;
	@Autowired
	private PF_ApplicantBiz pf_applicantBiz;

	// 파일 업로드 순서(ajax)
	// 1.dependency 2개 추가 (주석 처리해놈)
	// 2.servlet-context에서 multipartResolver 추가
	@RequestMapping(value = "/fileUpload.do", produces = "application/text; charset=utf-8")
	@ResponseBody
	public String fileUp(MultipartHttpServletRequest multi, HttpServletRequest request) throws FileNotFoundException {
		// 저장 경로 설정
		String path = WebUtils.getRealPath(request.getSession().getServletContext(), "/storage");
//          String path="C:\\Users\\Saebak\\git\\FinalProject_PF3\\Project_funding\\src\\main\\webapp\\resources\\portfolio";

		System.out.println(path);

		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdir();
		}

		String fileName = null;

		Iterator<String> files = multi.getFileNames();
		while (files.hasNext()) {
			String uploadFile = files.next();

			MultipartFile mFile = multi.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();

			// 파일이름 유저 주키로 지정
			System.out.println("실제 파일 이름 : " + fileName);
			try {
				mFile.transferTo(new File(path + "/" + fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return fileName;
	}

	@RequestMapping(value = "/imageUpload.do", produces = "application/text; charset=utf-8")
	@ResponseBody
	public String imageUp(MultipartHttpServletRequest multi, HttpServletRequest request) throws FileNotFoundException {
		// 저장 경로 설정
		String path = WebUtils.getRealPath(request.getSession().getServletContext(), "/storage");
//		String path = "..\\FinalProject_PF3\\Project_funding\\src\\main\\webapp\\resources\\image";

//      String path=WebUtils.getRealPath(request.getSession().getServletContext(), "/profile");
//		String path = "C:\\Users\\Saebak\\git\\FinalProject_PF3\\Project_funding\\src\\main\\webapp\\resources\\image";
//		System.out.println("강일 테스트 : "+request.getSession().getServletContext().getResourcePaths("/resources"));
		System.out.println(path);

		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdir();
		}

		String fileName = null;

		Iterator<String> files = multi.getFileNames();
		while (files.hasNext()) {
			String uploadFile = files.next();

			MultipartFile mFile = multi.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();

			// 파일이름 유저 주키로 지정
			System.out.println("실제 파일 이름 : " + fileName);
			try {
				mFile.transferTo(new File(path + "/" + fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return path + "/" + fileName;
	}

	// 인덱스로 이동
	@RequestMapping(value = "/index.do")
	public String index() {
		return "index";
	}

	// 프로젝트 등록 페이지
	@RequestMapping(value = "/project_insert.do")
	public String insert() {
		return "Project_Insert";
	}

	// 프로젝트 등록하기(클라이언트가 등록하면 검수 중 페이지로 넘어간다)
	@RequestMapping(value = "/insert.do")
	public String insert(HttpSession session, PF_BoardDto dto, HttpServletRequest request, Model model,
			String project_state) {

		model.addAttribute("dto", pf_boardBiz.insert(dto));
		int user_no = Integer.parseInt(request.getParameter("user_no"));

		model.addAttribute("client_project", pf_boardBiz.client_inspectionList(project_state, user_no));
		return "Client_InspectionList";
	}

	// =============================================================================================================
	// 관리자 페이지 기능
	// 1. 프로젝트 검수
	// 클라이언트 검수 프로젝트 리스트
	@RequestMapping(value = "/project_inspectionList.do")
	public String project_inspectionlist(Model model, HttpServletRequest request, String project_state,
			HttpSession session) {

		int user_no = Integer.parseInt(request.getParameter("user_no"));

		model.addAttribute("client_project", pf_boardBiz.client_inspectionList(project_state, user_no));
		return "Client_InspectionList";
	}

	// 클라이언트 검수 페이지 뷰
	@RequestMapping(value = "/project_inspectionview.do")
	public String project_inspectionview(int board_no, Model model) {
		model.addAttribute("dto", pf_boardBiz.selectOne(board_no));
		System.out.println("글 번호 : " + board_no);
		return "Client_InspectionView";
	}

	// 클라이언트 검수 프로젝트 삭제
	@RequestMapping(value = "/inspectionproject_delete.do")
	public String Inspection_ProjectDelete(Model model, String project_state, HttpServletRequest request) {
		int board_no = Integer.parseInt(request.getParameter("board_no"));

		int res = pf_boardBiz.delete(board_no);
		System.out.println(board_no);
		int user_no = Integer.parseInt(request.getParameter("user_no"));

		System.out.println("결과" + res);
		if (res > 0) {
			model.addAttribute("client_project", pf_boardBiz.client_inspectionList(project_state, user_no));

			return "Client_InspectionList";
		} else {
			return "Client_InspectionView";
		}
	}

	// 관리자 검수 프로젝트 리스트(클라이언트가 올린 글들이 리스트로 출력됨)
	@RequestMapping(value = "/admin_inspectionList.do")
	public String admin_project(Model model, HttpServletRequest request, String project_state) {

		model.addAttribute("ProjectList", pf_boardBiz.selectBoardList_inspection(project_state));
		return "Admin_InspectionList";
	}

	// 관리자 검수 뷰 페이지
	@RequestMapping(value = "/admin_projectview.do")
	public String Inspection_detail(int board_no, Model model, HttpSession session, HttpServletRequest request) {

		model.addAttribute("dto", pf_boardBiz.selectOne(board_no));

		return "Admin_InspectionView";
	}

	// 관리자 검수 신청 온 프로젝트 승인
	@RequestMapping(value = "/admin_changeproject.do")
	public String admin_changeproject(HttpServletRequest request, Model model, String project_state) {
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		int res = pf_boardBiz.admin_changeProject(board_no);

		if (res > 0) {
			model.addAttribute("dto", pf_boardBiz.admin_changeProject(board_no));
			model.addAttribute("ProjectList", pf_boardBiz.selectBoardList_inspection(project_state));
			return "Admin_InspectionList";
		}
		return "index";
	}

	// 관리자 검수 신청 온 프로젝트 폐기
	@RequestMapping(value = "/admin_deleteproject.do")
	public String admin_deleteproject(HttpServletRequest request, Model model, String project_state) {
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		int res = pf_boardBiz.admin_deleteproject(board_no, project_state);

		if (res > 0) {
			model.addAttribute("dto", pf_boardBiz.admin_deleteproject(board_no, project_state));
			model.addAttribute("ProjectList", pf_boardBiz.selectBoardList_inspection(project_state));
			return "Admin_InspectionList";
		}
		return "index";
	}

// ========================= 관리자 페이지 컨트롤러 끝 ==========================
// ===========================================================================================================================	

	// 프로젝트 리스트 - 페이징
	@RequestMapping(value = "/project_list.do")
	public String ProjectList(Model model, int page, String project_state) {
		model.addAttribute("ProjectList", pf_boardBiz.selectBoardList(page, project_state));
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
		model.addAttribute("project_state", project_state);

		System.out.println("페이지 번호 : " + page);
		return "Project_List";
	}

	// 금액 높은순 리스트 페이징
	// 페이징
	@RequestMapping(value = "/project_list_money.do")
	public String ProjectList_Money(Model model, int page, String project_state) {
		model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
		model.addAttribute("page", page);
		model.addAttribute("ProjectList", pf_boardBiz.selectMoneyList(page));

		return "Project_List";
	}

	// date 리스트 페이징
	// 페이징
	@RequestMapping(value = "/project_list_date.do")
	public String ProjectList_Date(Model model, int page, String project_state) {

		model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
		model.addAttribute("page", page);
		model.addAttribute("ProjectList", pf_boardBiz.selectDateList(page));

		return "Project_List";
	}

	// 검색,페이징
	@RequestMapping(value = "/search.do")
	public String search(Model model, String board_title, int page) {

		model.addAttribute("ProjectList", pf_boardBiz.search(page, board_title));
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_boardBiz.totalCount_title(board_title));
		model.addAttribute("board_title", board_title);
		return "Project_Search";

	}

	// 필터링 검색
	@RequestMapping(value = "/detail_search.do")
	public String detail_search(Model model, String category1, String category2, HttpServletRequest request, int page) {
		String[] category_chk = request.getParameterValues("category1");
		String[] category_chk2 = request.getParameterValues("category2");

		String mCategory1;
		String mCategory2;

		// 카테고리1이 체크 되었는지 확인하는 구문
		if (category_chk != null) { // 체크 된 경우
			mCategory1 = category1.replaceAll(",", "|");
		} else { // 체크 안한 경우
			mCategory1 = "웹|어플리케이션|일반 소프트웨어|게임|임베디드|퍼블리싱|기타";
		}

		// 카테고리2(돈)이 체크 되었는지 확인하는 구문
		if (category_chk2 != null) {
			mCategory2 = category2;
		} else { // 체크 안한 경우

			mCategory2 = "1000000000";
		}

		model.addAttribute("ProjectList", pf_boardBiz.detail_search1(page, mCategory1, mCategory2));
		model.addAttribute("page", page);
		model.addAttribute("project_category", category1);
		model.addAttribute("project_money", category2);
		model.addAttribute("totalCount_dtail", pf_boardBiz.totalCount_detail(mCategory1, mCategory2));
		return "Project_Search";

	}

	@RequestMapping(value = "/project_update.do")
	public String ProjectUpdate(int board_no, Model model) {
		model.addAttribute("dto", pf_boardBiz.selectOne(board_no));

		return "Project_Update";
	}

	@RequestMapping(value = "/update.do")
	public String update(Model model, PF_BoardDto dto, int board_no) {

		int res = pf_boardBiz.update(dto);

		if (res > 0) {
			model.addAttribute("dto", pf_boardBiz.selectOne(board_no));
			return "Project_View";
		}
		return "Project_Update";
	}

	@RequestMapping(value = "/project_delete.do")
	public String ProjectDelete(Model model, int board_no, int page, String project_state) {
		int res = pf_boardBiz.delete(board_no);

		if (res > 0) {
			model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
			model.addAttribute("page", page);
			model.addAttribute("Project_List", pf_boardBiz.selectBoardList(page, project_state));
			return "redirect:project_list.do";
		} else {
			return "Project_View";
		}
	}

	@RequestMapping(value = "/project_view.do")
	public String ProjectView(int board_no, Model model, HttpSession session, HttpServletRequest request) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		int coin_charge = 0;
		int coin_use = 0;

		int user_no = Integer.parseInt(request.getParameter("user_no"));

		coin_charge = pf_coinBiz.coin(userdto.getUser_no(), "충전");
		coin_use = pf_coinBiz.coin(userdto.getUser_no(), "사용");

		int invest_totalMoney = pf_investBiz.select_projectinvest(board_no);
		int apply_cnt = pf_applicantBiz.applyCount(board_no);

		model.addAttribute("apply_cnt", apply_cnt);
		model.addAttribute("invest_totalMoney", invest_totalMoney);
		model.addAttribute("messageuser", pf_userBiz.MessageUser(user_no));
		model.addAttribute("dto", pf_boardBiz.selectOne(board_no));
		model.addAttribute("coin", coin_charge - coin_use);

		return "Project_View";
	}

	@RequestMapping(value = "/comment_list.do", produces = "application/json; chatset=utf-8")
	@ResponseBody
	public ResponseEntity ajax_listComment(@ModelAttribute("comment_dto") PF_CommentDto comment_dto,
			@RequestParam("board_no") int board_no, HttpServletRequest request) {

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "application/json; charset=utf-8");
		ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

		List<PF_CommentDto> commentDto = pf_commentBiz.selectCommentList(comment_dto);

		if (commentDto.size() > 0) {
			for (int i = 0; i < commentDto.size(); i++) {
				HashMap hm = new HashMap();
				hm.put("comment_no", commentDto.get(i).getComment_no());
				hm.put("comment_content", commentDto.get(i).getComment_content());
				hm.put("comment_regdate", commentDto.get(i).getComment_regdate());
				PF_UserDto a = pf_userBiz.cast(commentDto.get(i).getUser_no());
				hm.put("user_id", a.getUser_id());
				hm.put("user_no", commentDto.get(i).getUser_no());

				hmlist.add(hm);

			}
		}

		JSONArray json = new JSONArray(hmlist);
		System.out.println(json.toString());
		return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);

	}

	@RequestMapping(value = "/comment_insert.do")
	@ResponseBody
	public String ajax_addComment(@ModelAttribute("comment_dto") PF_CommentDto comment_dto,
			@RequestParam("board_no") int board_no, HttpServletRequest request) {

		HttpSession session = request.getSession();
		PF_UserDto userDto = (PF_UserDto) session.getAttribute("userdto");

		try {

			comment_dto.setUser_no(userDto.getUser_no());
			comment_dto.setBoard_no(board_no);
			pf_commentBiz.insert(comment_dto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

	@RequestMapping(value = "/comment_update.do")
	@ResponseBody
	public String ajax_updateComment(@ModelAttribute("comment_dto") PF_CommentDto commentDto) {

		System.out.println(commentDto);

		try {
			pf_commentBiz.update(commentDto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

	@RequestMapping(value = "/comment_delete.do", method = RequestMethod.POST, produces = "application/json; chatset=utf-8")
	@ResponseBody
	public String ajax_deleteComment(@RequestParam("comment_no") int comment_no) {
		System.out.println("test");
		try {
			pf_commentBiz.delete(comment_no);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

	/// 파트너 리스트 출력하기
	@RequestMapping(value = "/partner_list.do")
	public String partnerlist(Model model, HttpServletRequest request) {
		List<PF_UserDto> PartnersList = pf_userBiz.partnerlist();

		model.addAttribute("PartnersList", PartnersList);

		return "User_PartnerList";
	}

	@RequestMapping(value = "/question.do")
	public String question() {
		return "Question";
	}

	//지원하기
	   @RequestMapping(value="/Apply_Project.do")
	   public String Apply(HttpSession session, Model model, PF_ApplicantDto dto, HttpServletResponse response) throws IOException {
	      
	      PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
	      dto.setUser_no(userdto.getUser_no());
	      
	      model.addAttribute("dto", pf_applicantBiz.insert(dto));
	      
	      if(userdto.getUser_no() == dto.getUser_no()) {
	         model.addAttribute("dto", pf_applicantBiz.insert(dto));
	         
	         System.out.println("세션 >> " + userdto.getUser_no());
	         System.out.println("지원한 애 >> " + dto.getUser_no());
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('이미 지원하신 프로젝트입니다.');</script>");
	      } 
	      
	      return "index";
	   }

	// 코인
//////////////////////리스트 가져오기///////////////////////
	@RequestMapping(value = "/user_coin.do")
	public String coin(HttpServletRequest request, HttpSession session, Model model, int page, int user_no,String coin_state) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");

		// List<PF_CoinDto> list = pf_coinBiz.coin_selectAll(userdto.getUser_no(),page);
		model.addAttribute("coinlist", pf_coinBiz.coin_selectAll(user_no, page));
		model.addAttribute("totalCount", pf_coinBiz.totalCount_coin(user_no));
		model.addAttribute("page", page);
		model.addAttribute("user_no", user_no);
		model.addAttribute("coinSum",pf_coinBiz.coinSum(coin_state));
		System.out.println(user_no);
		/*
		int coin_charge = 0;
		int coin_use = 0;
		int coin_A = 0;
		int coin_B = 0;

		coin_charge = pf_coinBiz.coin(userdto.getUser_no(), "충전");
		coin_use = pf_coinBiz.coin(userdto.getUser_no(), "사용");
		coin_A = pf_coinBiz.coin(userdto.getUser_no(), "환불대기중");
		coin_B = pf_coinBiz.coin(userdto.getUser_no(), "환불완료");
		 */
//model.addAttribute("coinlist", list);

// 현재 보유 포인트
		//model.addAttribute("coin", coin_charge - coin_use + coin_A - coin_B);

		return "User_Coin";
	}

//////////////////////포인트 충전 페이지//////////////////	
	@RequestMapping(value = "/user_coin1.do")
	public String coin1(HttpServletRequest request, HttpSession session, Model model, int page, int user_no) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");

		int amount = 0;
		if (request.getParameter("amount") != null) {
			amount = Integer.parseInt(request.getParameter("amount"));

			pf_coinBiz.coin_insert(userdto.getUser_no(), amount, "충전");
		}

		model.addAttribute("amount", amount);
		model.addAttribute("page", page);
		model.addAttribute("user_no", user_no);

		return "redirect:/user_coin.do";
	}

///////////////////////////////사용/////////////////////////	
	@RequestMapping(value = "investAction.do")
	public String investAction(int board_no, int coin, int amount_val, HttpSession session, int clientUser_no,
			Model model) {
//		 board_no - 보드넘버, coin - 보유코인, amount_val - 투자금액
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		int investRes = pf_investBiz.invest_insert(userdto.getUser_no(), amount_val, board_no);
		if (investRes > 0) {
			int coinRes = pf_coinBiz.coin_insert(userdto.getUser_no(), amount_val, "사용");
		}
		return "redirect:/project_view.do?user_no=" + clientUser_no + "&board_no=" + board_no;
	}

	@RequestMapping(value = "coin_payment_use_01.do")
	public String getCoin_payment_use01(Model model, int amount_val, int board_no) {

		model.addAttribute("amount_val", amount_val);
		model.addAttribute("board_no", board_no);
		return "example01";
	}

	@RequestMapping(value = "/user_coinpayment.do")
	public String user_coinpayment(@RequestParam String amount, Model model) {
		model.addAttribute("amount", amount);
		return "User_CoinPayment";
	}

	@RequestMapping(value = "coin_payment_use.do", method = RequestMethod.GET)
	public String getCoin_Payment_use(HttpSession session, int amount_val, int board_no, Model model) {

		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");

		pf_coinBiz.coin_insert(userdto.getUser_no(), amount_val, "사용");
		pf_investBiz.invest_insert(userdto.getUser_no(), amount_val, board_no);

		return "redirect:/user_coin.do";
	}

	//================================================ 관리자 코인 환불 =======================================================
	// 투자자 코인 환불
	// 환불 신청을 하면 값을 가지고 user_coin.do로 이동한다.
	@RequestMapping(value = "/User_refund.do")
	public String User_refund(int coin_no, HttpSession session, int page, Model model, int user_no) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		pf_coinBiz.coin_update(coin_no);
		model.addAttribute("coin_no", coin_no);
		model.addAttribute("user_no", user_no);
		model.addAttribute("page", page);
		return "redirect:/user_coin.do";
	}
	
	// 관리자 코인 환불 리스트
	@RequestMapping(value="/admin_coin.do")
	public String admin_coin(Model model,String coin_state) {
		
		model.addAttribute("coin_list",pf_coinBiz.refundList(coin_state));
		return "Admin_Coin";
	}
	
	// 관리자 코인 환불 승인
	@RequestMapping(value="/admin_coinupdate.do")
	public String admin_coinupdate(Model model, String coin_state,HttpServletRequest request) {
		
		int coin_no = Integer.parseInt(request.getParameter("coin_no"));
		System.out.println(coin_no);
		
		model.addAttribute("coin_update",pf_coinBiz.coinState(coin_state, coin_no));
		model.addAttribute("coin_list",pf_coinBiz.refundList(coin_state));
		return "Admin_Coin";
	}
	
	@RequestMapping(value = "/project_fundinglist.do")
	public String projectfunding() {
		return "Project_FundingList";
	}

	// 로그인
	@RequestMapping(value = "/login.do")
	public String login() {
		return "User_Login";
	}

	@RequestMapping(value = "/loginCheck.do")
	public String loginCheck(String user_id, String user_pw, HttpSession session) {

		PF_UserDto dto = pf_userBiz.selectUser(user_id);
		if (dto.getUser_pw().equals(user_pw)) {
			session.setAttribute("userdto", dto);

			if (dto.getUser_email_check().equals("TRUE")) {
				return "index";
			} else {
				return "sendEmail";
			}
		}
		return "User_Login";
	}

	@RequestMapping(value = "/loginCheckAjax.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> loginCheckAjax(String user_id, String user_pw, HttpSession session) {
		PF_UserDto dto = pf_userBiz.login(user_id, user_pw);
		boolean loginChk = false;
		if (dto != null) {
			session.setAttribute("userdto", dto);
			loginChk = true;
			System.out.println("로그인 성공");
		}
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("loginChk", loginChk);
		map.put("emailCheck", Boolean.parseBoolean(dto.getUser_email_check()));
		return map;

	}

	@RequestMapping(value = "/logOut.do")
	public String logOut(String user_id, String user_pw, HttpSession session) {
		if (session != null) {
			session.invalidate();
			session = null;
		}
		return "index";
	}

	@RequestMapping(value = "/sendEmail.do")
	public String sendEmail(String user_email) {
		if (!pf_userBiz.user_sendEmail(user_email)) {
			return "error";
		}
		return "sendEmail_result";

	}

	@RequestMapping(value = "/emailCheck.do")
	public String emailCheck(String user_email, String code) {
		if (!pf_userBiz.user_setEmailCheck(user_email, code)) {
			return "error";
		}
		return "index";
	}

	// 회원가입
	@RequestMapping(value = "/join.do")
	public String join() {
		return "User_Join";
	}

	@RequestMapping(value = "/joinCheck.do")
	public String joinCheck(String user_id, String user_pw, String user_email, String user_type) {
		PF_UserDto dto = new PF_UserDto(user_id, user_pw, user_email, user_type);
		// 유저 넘버를 반환받는다.
		int res = pf_userBiz.insertUser(dto);
		System.out.println(res);
		// 회원가입한(파트너스)계정에 프로필 테이블을 생성해준다. - 클라이언트도 생성해준다.(자기소개 떄문에)
		// res를 객체생성 파라미터에 넣어주는 이유는 회원 삽입 결과를 회원 시퀀스 번호로 받았기 때문이다.
		if (user_type.equals("파트너스") || user_type.equals("클라이언트")) {
			PF_ProfileDto profileDto = new PF_ProfileDto(res);
			pf_profileBiz.insertProfile(profileDto);
		}
		// 회원가입 성공시 로그인 페이지로 이동
		if (res > 0) {
			return "User_Login";
		}
		return "User_Join";
	}

	// 파트너 프로필
	@RequestMapping(value = "partners_profile.do")
	public String partners_profile(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());

		List<PF_TechnologyDto> techdtoList = pf_technologyBiz.selectTech(profiledto.getProfile_no());
		List<PF_CareerDto> careerdtoList = pf_careerBiz.selectCareer(profiledto.getProfile_no());
		List<PF_EducationDto> educationdtoList = pf_educationBiz.selectEducation(profiledto.getProfile_no());
		List<PF_CertificateDto> certificatedtoList = pf_certificateBiz.selectCertificate(profiledto.getProfile_no());
		PF_EvaluationDto evaluationdto = pf_evaluationBiz.selectEcaluation(userdto.getUser_id());
		int avg = 0;
		try {
			avg = (int) (evaluationdto.getItem1() + evaluationdto.getItem1() + evaluationdto.getItem1()) / 3;
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (profiledto.getProfile_intro() != null) {
			profiledto.setProfile_intro(profiledto.getProfile_intro().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
					.replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
		}

		model.addAttribute("profiledto", profiledto);
		model.addAttribute("techdtoList", techdtoList);
		model.addAttribute("careerdtoList", careerdtoList);
		model.addAttribute("educationdtoList", educationdtoList);
		model.addAttribute("certificatedtoList", certificatedtoList);
		model.addAttribute("evaluationdto", evaluationdto);
		model.addAttribute("avg", avg);

		if (techdtoList.size() == 0) {
			String techList = null;
			model.addAttribute("techList", techList);
		} else {
			String techList = "techList";
			model.addAttribute("techList", techList);
		}
		if (careerdtoList.size() == 0 && educationdtoList.size() == 0 && certificatedtoList.size() == 0) {
			String careerList = null;
			model.addAttribute("careerList", careerList);
		} else {
			String careerList = "careerList";
			model.addAttribute("careerList", careerList);
		}

		return "Partner_Profile";
	}
	//파트너스 프로필 팝업
	@RequestMapping(value = "partners_popup.do")
	public String partners_popup(String user_id, Model model) {
		PF_UserDto userdto = pf_userBiz.selectUser(user_id);
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());


		List<PF_TechnologyDto> techdtoList = pf_technologyBiz.selectTech(profiledto.getProfile_no());
		List<PF_CareerDto> careerdtoList = pf_careerBiz.selectCareer(profiledto.getProfile_no());
		List<PF_EducationDto> educationdtoList = pf_educationBiz.selectEducation(profiledto.getProfile_no());
		List<PF_CertificateDto> certificatedtoList = pf_certificateBiz.selectCertificate(profiledto.getProfile_no());
		PF_EvaluationDto evaluationdto = pf_evaluationBiz.selectEcaluation(user_id);
		int avg = 0;
		try {
			avg = (int)(evaluationdto.getItem1()+evaluationdto.getItem1()+evaluationdto.getItem1())/3;
		} catch (Exception e) {
			e.printStackTrace();
		}

		if(profiledto.getProfile_intro()!=null) {
			profiledto.setProfile_intro(profiledto.getProfile_intro().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
		}
		model.addAttribute("partneruserdto", userdto);
		model.addAttribute("profiledto", profiledto);
		model.addAttribute("techdtoList", techdtoList);
		model.addAttribute("careerdtoList", careerdtoList);
		model.addAttribute("educationdtoList", educationdtoList);
		model.addAttribute("certificatedtoList", certificatedtoList);
		model.addAttribute("evaluationdto", evaluationdto);
		model.addAttribute("avg", avg);

		if (techdtoList.size() == 0) {
			String techList = null;
			model.addAttribute("techList", techList);
		} else {
			String techList = "techList";
			model.addAttribute("techList", techList);
		}
		if (careerdtoList.size() == 0 && educationdtoList.size() == 0 && certificatedtoList.size() == 0) {
			String careerList = null;
			model.addAttribute("careerList", careerList);
		} else {
			String careerList = "careerList";
			model.addAttribute("careerList", careerList);
		}

		return "Partner_PopUp";
	}
	// 유저 계정 유형
	@RequestMapping(value = "user_typeUpdate.do")
	public String user_typeUpdate(HttpSession session) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		if (userdto.getUser_uptype() != null) {
			return "User_TypeWait";
		}
		return "User_TypeUpdate";
	}

	// 유저 계정 유형 변경 신청
	@RequestMapping(value = "user_typeUpdateAction.do")
	public String user_typeUpdateAction(HttpSession session, String select_type) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		userdto.setUser_uptype(select_type);
		pf_userBiz.updateUser_type(userdto);
		return "User_TypeWait";
	}

	// 지원내역
	@RequestMapping(value = "/project_supportList.do")
	public String project_supportList(HttpSession session, Model model, String applicant_state) {

		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");


		System.out.println("userDto >> " + userdto);

		List<PF_BoardDto> list = pf_applicantBiz.selectAll_partners(userdto.getUser_no(), "지원함");
		System.out.println("list >> " + list);

		model.addAttribute("ApplicantList", list);

		return "Project_SupportList";
	}

	// 진행중인 프로젝트
	@RequestMapping(value = "project_ing.do")
	public String fundingProject_ing(Model model, int page, String project_state) {
		model.addAttribute("ProjectList", pf_boardBiz.ing_list(page, project_state));
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_boardBiz.totalCount_ing(project_state));
		model.addAttribute("project_state", project_state);
		System.out.println(page);
		System.out.println(project_state);
		return "Project_IngList";
	}

	// 완료한 프로젝트
	@RequestMapping(value = "project_end.do")
	public String fundingProject_end(Model model, int page, String project_state) {
		model.addAttribute("ProjectList", pf_boardBiz.end_list(page, project_state));
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_boardBiz.totalCount_end(project_state));
		model.addAttribute("project_state", project_state);
		return "Project_EndList";
	}

	// 기본정보 수정
	@RequestMapping(value = "user_infoUpdate.do")
	public String user_infoUpdate(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		model.addAttribute("userdto", userdto);
		return "User_InfoUpdate";
	}

	// 기본정보 수정
	@RequestMapping(value = "user_infoUpdateAction.do")
	public String user_infoUpdateAction(HttpSession session, String user_name, String user_img, String user_sex,
			String user_addr, String user_birth) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		userdto.setUser_addr(user_addr);
		userdto.setUser_birth(user_birth);
		userdto.setUser_img(user_img);
		userdto.setUser_name(user_name);
		userdto.setUser_sex(user_sex);

		pf_userBiz.updateUser_Info(userdto);

		return "User_InfoUpdate";
	}

	// 관심프로젝트 - 페이징
	@RequestMapping(value = "project_likeList.do")
	public String project_likeList(HttpSession session, HttpServletRequest request, PF_BoardDto dto, Model model,
			String project_state, int page) {
		PF_UserDto userDto = (PF_UserDto) session.getAttribute("userdto");

		int board_no = Integer.parseInt(request.getParameter("board_no"));

		System.out.println(board_no);

		int likeuser_no = userDto.getUser_no();
		int LikeUpdate = pf_boardBiz.LikeUpdate(board_no, likeuser_no);
		List<PF_BoardDto> likelist = pf_boardBiz.likeList(likeuser_no);
		System.out.println("결과" + LikeUpdate);
		for (PF_BoardDto asddto : likelist) {
			System.out.println("디티오 좋아요 사람 : " + asddto.getLikeuser_no());
		}

		model.addAttribute("LikeUpdate", LikeUpdate);
		model.addAttribute("userdto", userDto);
		model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
		model.addAttribute("page", page);
		model.addAttribute("likelist", likelist);

		return "redirect:partner_mypage.do";
	}

	@RequestMapping(value = "likeList.do")
	public String likeList(HttpSession session, HttpServletRequest request, PF_BoardDto dto, Model model, int page,
			String project_state) {

		PF_UserDto userDto = (PF_UserDto) session.getAttribute("userdto");
		int likeuser_no = userDto.getUser_no();
		List<PF_BoardDto> likelist = pf_boardBiz.likeList(likeuser_no);

		model.addAttribute("userdto", userDto);
		model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
		model.addAttribute("page", page);
		model.addAttribute("likeList", pf_boardBiz.likeList(likeuser_no));

		return "Project_LikeList";
	}

	// 파트너스 정보
	@RequestMapping(value = "partnerReg_info.do")
	public String partnerReg_info(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		model.addAttribute("profiledto", profiledto);
		return "PartnerReg_Info";
	}

	// 파트너스 정보 수정 (자기소개 수정 포함)
	@RequestMapping(value = "partnerReg_infoUpdate.do")
	public String partnerReg_infoUpdate(int profile_no, String profile_job, String profile_activity,
			String profile_intro, HttpSession session) {
		PF_ProfileDto profiledto = new PF_ProfileDto(profile_no, profile_job, profile_activity, profile_intro);
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		String user_type = userdto.getUser_type();
		int res = pf_profileBiz.updateProfile(profiledto);
		if (res > 0) {
			if (user_type.equals("클라이언트")) {
				return "redirect:client_mypage.do";
			}
			return "redirect:partners_profile.do";
		}
		return "redirect:partnerReg_info.do";
	}

	// 자기소개
	@RequestMapping(value = "partnerReg_about.do")
	public String partnerReg_about(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());
		model.addAttribute("profiledto", profiledto);
		return "PartnerReg_About";
	}

	// 포트폴리오
	@RequestMapping(value = "partnerReg_portfolio.do")
	public String partnerReg_portfolio() {
		return "PartnerReg_Portfolio";
	}

	// 포트폴리오 삽입
	@RequestMapping(value = "partnerReg_portfolioInsert.do")
	public String partnerReg_portfolioInsert(HttpSession session, Model model, String portfolio_title,
			Date portfolio_start_day, Date portfolio_end_day, int portfolio_participation, String portfolio_content,
			String portfolio_file) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());

		PF_PortfolioDto portfoliodto = new PF_PortfolioDto(profiledto.getProfile_no(), portfolio_title,
				portfolio_start_day, portfolio_end_day, portfolio_participation, portfolio_content, portfolio_file);
		int res = pf_portfolioBiz.insertPortfolio(portfoliodto);
		if (res > 0) {
			return "redirect:partners_profile.do";
		}
		return "PartnerReg_Portfolio";
	}

	// 보유 기술
	@RequestMapping(value = "partnerReg_technology.do")
	public String partnerReg_technology() {
		return "PartnerReg_Technology";
	}

	// 보유 기술 삽입
	@RequestMapping(value = "partnerReg_technologyInsert.do")
	public String partnerReg_technologyInsert(String tech_type, String tech_skill, String tech_exp,
			HttpSession session) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());

		int res = pf_technologyBiz.insertTechnology(profiledto.getProfile_no(), tech_type, tech_skill, tech_exp);
		if (res > 0) {
			return "redirect:partners_profile.do";
		}
		return "PartnerReg_Technology";
	}

	// 보유 기술 삭제
	@RequestMapping(value = "partnerReg_technologyDelete.do")
	public String partnerReg_technologyDelete(int tech_no) {
		pf_technologyBiz.deleteTechnology(tech_no);
		return "redirect:partners_profile.do";
	}

	// 경력/학력/자격증
	@RequestMapping(value = "partnerReg_career.do")
	public String partnerReg_career() {
		return "PartnerReg_career";
	}

	// 경력/학력/자격증 등록
	@RequestMapping(value = "partnerReg_careerInsert.do")
	public String partnerReg_careerInsert(HttpServletRequest request, HttpSession session, String career_company,
			String career_dept, String career_spot, String career_hiredate_year, String career_hiredate_month,
			String career_firedate_year, String career_firedate_month, String edu_name, String edu_state,
			String edu_major, String edu_hiredate_year, String edu_hiredate_month, String edu_firedate_year,
			String edu_firedate_month, String certificate_name, String certificate_agency,
			String certificate_issueddate) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());

		int careerRes = pf_careerBiz.insertCareer(profiledto.getProfile_no(), career_company, career_dept, career_spot,
				career_hiredate_year, career_hiredate_month, career_firedate_year, career_firedate_month);
		int educationRes = pf_educationBiz.insertEducation(profiledto.getProfile_no(), edu_name, edu_state, edu_major,
				edu_hiredate_year, edu_hiredate_month, edu_firedate_year, edu_firedate_month);
		int certificateRes = pf_certificateBiz.insertCertificate(profiledto.getProfile_no(), certificate_name,
				certificate_agency, certificate_issueddate);

		if (careerRes + educationRes + certificateRes == 0) {
			return "PartnerReg_career";
		}
		return "redirect:partners_profile.do";
	}

	// 보유 기술 삭제
	@RequestMapping(value = "partnerReg_careerDelete.do")
	public String partnerReg_careerDelete(int career_no) {
		pf_careerBiz.deleteCareer(career_no);
		return "redirect:partners_profile.do";
	}

	// 보유 기술 삭제
	@RequestMapping(value = "partnerReg_educationDelete.do")
	public String partnerReg_educationDelete(int edu_no) {
		pf_educationBiz.deleteEducation(edu_no);
		return "redirect:partners_profile.do";
	}

	// 보유 기술 삭제
	@RequestMapping(value = "partnerReg_certificateDelete.do")
	public String partnerReg_certificateDelete(int certificate_no) {
		pf_certificateBiz.deleteCertificate(certificate_no);
		return "redirect:partners_profile.do";
	}

	// 비밀번호 번경
	@RequestMapping(value = "user_pwUpdate.do")
	public String user_pwUpdate() {
		return "User_PWUpdate";
	}

	// 회원 탈퇴
	@RequestMapping(value = "user_delete.do")
	public String user_delete(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		model.addAttribute("userdto", userdto);
		return "User_Delete";
	}

	// 회원 탈퇴
	@RequestMapping(value = "user_deleteAction.do")
	public String user_deleteAction(HttpSession session) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		pf_userBiz.deleteUser(userdto);
		return "redirect:logOut.do";
	}

	// 파트너스 나의푸딩
	@RequestMapping(value = "partner_mypage.do")
	public String partnermypage(HttpSession session, Model model, HttpServletRequest request, int page,
			String project_state) {
		PF_UserDto userDto = (PF_UserDto) session.getAttribute("userdto");

		int likeuser_no = userDto.getUser_no();
		List<PF_BoardDto> likelist = pf_boardBiz.likeList(likeuser_no);

		model.addAttribute("userdto", userDto);
		model.addAttribute("totalCount", pf_boardBiz.totalcount(project_state));
		model.addAttribute("page", page);
		model.addAttribute("likelist", likelist);

		return "Partner_Mypage";
	}

	// 클라이언트 나의푸딩
	@RequestMapping(value = "client_mypage.do")
	public String clientrmypage(HttpSession session, Model model) {
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		PF_ProfileDto profiledto = pf_profileBiz.selectProfile(userdto.getUser_no());

		if (profiledto.getProfile_intro() != null) {
			profiledto.setProfile_intro(profiledto.getProfile_intro().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
					.replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
		}
		model.addAttribute("profiledto", profiledto);
		return "Client_Mypage";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "user_findPW.do")
	public String user_findPW() {
		return "User_FindPW";
	}

	// 지원자 모집중
	@RequestMapping(value = "project_recruitmentList.do")
	public String project_recruitmentList(Model model, String project_state) {

		model.addAttribute("RecruitmentList", pf_boardBiz.ingBoardList("지원자 모집 중"));

		return "Project_RecruitmentList";
	}

	@RequestMapping(value = "partnersList_client.do")
	public String project_recruitmentList(HttpSession session, Model model) {

		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");

		List<PF_UserDto> list = pf_userBiz.PartnersList_client(userdto.getUser_no());

		model.addAttribute("PartnersList", list);

		return "PartnersList_Client";
	}

	// 받은 쪽지함
	@RequestMapping(value = "message_re.do")
	public String Message_Re(PF_MessageDto dto, HttpSession session, Model model, int page, String message_state) {
		// id값을 받아오기 위해 세션객체 만들어줌
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		// id값 받아옴
		String user_id = userdto.getUser_id();
		int countmessage = pf_messageBiz.MessageUnread(user_id, message_state);

		System.out.println("페이지 테스트 : " + page);
		model.addAttribute("count", countmessage);

		List<PF_MessageDto> reMessage = pf_messageBiz.MessageList_Re(user_id, page);
		model.addAttribute("reMessage", reMessage);
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Re(user_id));
		model.addAttribute("user_id", user_id);

		return "User_NoteReceive_View";
	}

	// 보낸 쪽지함
	@RequestMapping(value = "message_se.do")
	public String Message_Se(PF_MessageDto dto, HttpSession session, Model model, int page, String message_state) {
		// id값을 받아오기 위해 세션객체 만들어줌
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		// id값 받아옴
		String user_id = userdto.getUser_id();
		int countmessage = pf_messageBiz.MessageUnread(user_id, message_state);

		model.addAttribute("count", countmessage);

		List<PF_MessageDto> seMessage = pf_messageBiz.MessageList_Se(user_id, page);
		model.addAttribute("seMessage", seMessage);

		// page=1을 받았고 쪽지를 보내고 1페이지로 이동하기 위해 페이지 값들을 받아줌
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Se(user_id));
		model.addAttribute("user_id", user_id);

		return "User_NoteSend_View";
	}

	// 쪽지 보내기
	@RequestMapping(value = "message_insert.do")
	public String Message_Insert(Model model, HttpServletRequest request, HttpSession session, int page) {

		String message_reader = request.getParameter("reader");
		String message_content = request.getParameter("content");
		String message_sender = request.getParameter("sender");

		PF_MessageDto dto = new PF_MessageDto(message_content, message_reader, message_sender);
		int board_no = Integer.parseInt(request.getParameter("board_no"));

		System.out.println(message_reader + message_content + message_sender);

		int res = pf_messageBiz.MessageInsert(dto);

		if (res > 0) {
			model.addAttribute("dto", pf_boardBiz.selectOne(board_no));

			return "Project_View";
		}
		return "index";
	}

	// 쪽지 답장 보내기
	@RequestMapping(value = "message_reply.do")
	public String Message_Reply(Model model, HttpServletRequest request, HttpSession session, int page) {
		String message_reader = request.getParameter("reader");
		String message_content = request.getParameter("content");
		String message_sender = request.getParameter("sender");

		PF_MessageDto dto = new PF_MessageDto(message_content, message_reader, message_sender);
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");

		String user_id = userdto.getUser_id();

		int res = pf_messageBiz.MessageInsert(dto);

		if (res > 0) {
			model.addAttribute("reMessage", pf_messageBiz.MessageList_Re(user_id, page));
			model.addAttribute("page", page);
			model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Se(user_id));
			model.addAttribute("user_id", user_id);

			return "User_NoteReceive_View";
		} else {
			return "index";
		}

	}

	// 쪽지 읽기(읽음 / 안읽음 표시)
	@RequestMapping(value = "message_view.do")
	public String Message_View(Model model, HttpServletRequest request) {
		int message_no = Integer.parseInt(request.getParameter("message_no"));

		System.out.println(message_no);

		PF_MessageDto MessageView = pf_messageBiz.MessageView(message_no);
		int MessageUpdate = pf_messageBiz.MessageUpdate(message_no);

		model.addAttribute("MessageView", MessageView);
		model.addAttribute("MessageUpdate", MessageUpdate);

		return "User_NoteView";
	}

	// 받은 쪽지 삭제
	@RequestMapping(value = "receive_delete.do")
	public String Re_Message_Delete(Model model, HttpServletRequest request, HttpSession session, int page) {
		int message_no = Integer.parseInt(request.getParameter("message_no"));

		int MessageDelete = pf_messageBiz.MessageDelete(message_no);

		try {
			// id에 맞는 쪽지함을 불러오기 위해 아이디 값을 받아온다.
			PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
			// id값 받아옴
			String user_id = userdto.getUser_id();

			List<PF_MessageDto> reMessage = pf_messageBiz.MessageList_Re(user_id, page);

			model.addAttribute("reMessage", reMessage);
			model.addAttribute("page", page);
			model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Se(user_id));
			model.addAttribute("user_id", user_id);

			return "User_NoteReceive_View";

		} catch (Exception e) {
			System.out.println("쪽지 삭제 에러");
			return "index";
		}
	}

	// 보낸 쪽지 삭제
	@RequestMapping(value = "send_delete.do")
	public String Se_Message_Delete(Model model, HttpServletRequest request, HttpSession session, int page) {
		int message_no = Integer.parseInt(request.getParameter("message_no"));

		int MessageDelete = pf_messageBiz.MessageDelete(message_no);

		try {
			// id에 맞는 쪽지함을 불러오기 위해 아이디 값을 받아온다.
			PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
			// id값 받아옴
			String user_id = userdto.getUser_id();

			List<PF_MessageDto> seMessage = pf_messageBiz.MessageList_Se(user_id, page);

			model.addAttribute("seMessage", seMessage);
			model.addAttribute("page", page);
			model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Se(user_id));
			model.addAttribute("user_id", user_id);

			return "User_NoteSend_View";

		} catch (Exception e) {
			System.out.println("쪽지 삭제 에러");
			return "index";
		}
	}

	// 받은 쪽지뷰에서 받은 쪽지함으로 이동
	@RequestMapping(value = "re_list.do")
	public String Re_Message_List(Model model, int page, HttpSession session) {

		// id에 맞는 쪽지함을 불러오기 위해 아이디 값을 받아온다.
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		// id값 받아옴
		String user_id = userdto.getUser_id();

		List<PF_MessageDto> reMessage = pf_messageBiz.MessageList_Re(user_id, page);
		model.addAttribute("reMessage", reMessage);
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Se(user_id));
		model.addAttribute("user_id", user_id);
		return "User_NoteReceive_View";
	}

	// 보낸 쪽지뷰에서 보낸 쪽지함으로 이동
	@RequestMapping(value = "se_list.do")
	public String Se_Message_List(Model model, int page, HttpSession session) {

		// id에 맞는 쪽지함을 불러오기 위해 아이디 값을 받아온다.
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		// id값 받아옴
		String user_id = userdto.getUser_id();

		List<PF_MessageDto> seMessage = pf_messageBiz.MessageList_Se(user_id, page);
		model.addAttribute("seMessage", seMessage);
		model.addAttribute("page", page);
		model.addAttribute("totalCount", pf_messageBiz.totalCount_Message_Se(user_id));
		model.addAttribute("user_id", user_id);
		return "User_NoteSend_View";

	}

	// 안읽은 쪽지 개수 출력 테스트(잘 나옴)
	@RequestMapping(value = "count.do")
	public String counttest(Model model, HttpSession session, String message_state) {
		// id에 맞는 쪽지함을 불러오기 위해 아이디 값을 받아온다.
		PF_UserDto userdto = (PF_UserDto) session.getAttribute("userdto");
		// id값 받아옴
		String user_id = userdto.getUser_id();
		int countmessage = pf_messageBiz.MessageUnread(user_id, message_state);

		model.addAttribute("count", countmessage);

		return "test";
	}

	// 관리자 검수확인 페이지 이동
	@RequestMapping(value = "project_inspection_chk.do")
	public String project_inspection_chk() {
		return "Project_Inspection_Check";
	}

	//평가 리스트 페이지로 이동
	@RequestMapping(value="partner_evaluationlist.do")
	public String partner_evaluationlist(String user_id, Model model) {
		List<PF_EvaluationDto> evaluationlist = pf_evaluationBiz.selectAll(user_id);
		model.addAttribute("evaluationlist", evaluationlist);
		return "Partner_EvaluationList";
	}
	
	//해당 프로젝트 지원자 리스트로 이동
	@RequestMapping(value="recruitment_partnersList.do")
	public String recruitment_partnersList(int board_no, Model model) {
		List<PF_ApplicantDto> recruitmentlist = pf_applicantBiz.recruitmentList(board_no);

		model.addAttribute("recruitmentlist", recruitmentlist);
		model.addAttribute("board_no", board_no);
		return "Project_RecruitmentPartnersList";
	}
	
	//지원자 선택
	@RequestMapping(value="selection_Partners.do")
	public String selection_Partners(int board_no, int applicant_no, Model model) {
		int applicantRes = pf_applicantBiz.selectionPartners(applicant_no);
		PF_BoardDto boarddto = pf_boardBiz.selectOne(board_no);
		int apply_cnt = pf_applicantBiz.recruitCount(board_no);
		if(Integer.parseInt(boarddto.getRecruit_personnel()) == apply_cnt) {
			int boardRes = pf_boardBiz.updateState(board_no);
			return "redirect:project_ing.do?page=1&project_state='진행 중'";
		}
		return "redirect:recruitment_partnersList.do?board_no="+board_no;
	}
	
	

}