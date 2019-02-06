package com.klp.pf.model.biz;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_BoardDto;
import com.klp.pf.model.dao.PF_BoardDao;

@Service
public class PF_BoardBizImpl implements PF_BoardBiz {

	@Autowired
	private PF_BoardDao pf_boardDao;

	// 프로젝트 찾기
	public List<PF_BoardDto> selectBoardList(int page, String project_state) {
		System.out.println("biz" + page);
		return pf_boardDao.selectBoardList(page, project_state);
	}

	@Override
	public int totalcount(String project_state) {
		return pf_boardDao.totalCount(project_state);
	}

	@Override
	public int insert(PF_BoardDto dto) {
		System.out.println(dto);
		return pf_boardDao.insert(dto);
	}

	@Override
	public int update(PF_BoardDto dto) {

		return pf_boardDao.update(dto);
	}

	@Override
	public int delete(int board_no) {

		return pf_boardDao.delete(board_no);
	}

	@Override
	public PF_BoardDto selectOne(int board_no) {

		return pf_boardDao.selectOne(board_no);
	}

	// 키워드 검색
	@Override
	public List<PF_BoardDto> search(int page, String board_title) {
		// TODO Auto-generated method stub
		return pf_boardDao.search(page, board_title);
	}

	@Override
	public int totalCount_title(String board_title) {
		return pf_boardDao.totalCount_title(board_title);
	}

	// 카테고리 검색
	@Override
	public List<PF_BoardDto> detail_search1(int page, String category1, String category2) {
		// TODO Auto-generated method stub
		return pf_boardDao.detail_search1(page, category1, category2);
	}

	@Override
	public int totalCount_detail(String category1, String category2) {
		// TODO Auto-generated method stub
		return pf_boardDao.totalCount_detail(category1, category2);
	}

	// 높은 금액순
	@Override
	public List<PF_BoardDto> selectMoneyList(int page) {
		// TODO Auto-generated method stub
		return pf_boardDao.selectMoneyList(page);
	}

	// 마감임박순
	@Override
	public List<PF_BoardDto> selectDateList(int page) {
		// TODO Auto-generated method stub
		return pf_boardDao.selectDateList(page);
	}

	@Override
	public List<PF_BoardDto> ingBoardList(String project_state) {

		return pf_boardDao.ingBoardList(project_state);
	}

	@Override
	public List<PF_BoardDto> end_list(int page, String project_state) {
		return pf_boardDao.end_list(page, project_state);
	}

	@Override
	public int updateState(int board_no) {

		return pf_boardDao.updateState(board_no);
	}

	@Override
	public int totalCount_end(String project_state) {
		return pf_boardDao.totalCount_end(project_state);
	}

	@Override
	public List<PF_BoardDto> ing_list(int page, String project_state) {
		return pf_boardDao.ing_list(page, project_state);
	}

	@Override
	public int totalCount_ing(String project_state) {
		return pf_boardDao.totalCount_ing(project_state);
	}

	// 관심 상태 변경
	@Override
	public int LikeUpdate(int board_no, int likeuser_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();

		map.put("board_no", board_no);
		map.put("likeuser_no", likeuser_no);

		return pf_boardDao.LikeUpdate(map);
	}

	// 관심프로젝트 목록
	@Override
	public List<PF_BoardDto> likeList(int user_no) {

		return pf_boardDao.likeList(user_no);
	}

	// 동민 추가 부분
	// 관리자 검수 중 페이지 리스트
	@Override
	public List<PF_BoardDto> selectBoardList_inspection(String project_state) {
		return pf_boardDao.selectBoardList_inspection(project_state);
	}

	// 클라이언트 검수 중 페이지 리스트
	@Override
	public List<PF_BoardDto> client_inspectionList(String project_state, int user_no) {
		return pf_boardDao.client_inspectionList(project_state, user_no);
	}

	// 관리자 검수 신청 온 프로젝트 승인
	@Override
	public int admin_changeProject(int board_no) {
		return pf_boardDao.admin_changeProject(board_no);
	}

	// 관리자 검수 신청 온 프로젝트 폐기
	@Override
	public int admin_deleteproject(int board_no, String project_state) {
		return pf_boardDao.admin_deleteproject(board_no, project_state);
	}
}
