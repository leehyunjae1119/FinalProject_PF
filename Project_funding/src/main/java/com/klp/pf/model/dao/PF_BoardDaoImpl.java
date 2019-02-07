package com.klp.pf.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_BoardDto;

import java.util.ArrayList;

@Repository
public class PF_BoardDaoImpl implements PF_BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 프로젝트 찾기
	@Override
	public List<PF_BoardDto> selectBoardList(int page, String project_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("page", Integer.toString(page));
		map.put("project_state", project_state);
		System.out.println("맵 테스트 : " + map);
		List<PF_BoardDto> res = sqlSession.selectList(pf_boardNamespace + "listPage", map);
		System.out.println("dao11" + res);
		return res;
	}

	// 진행중인 프로젝트
	@Override
	public List<PF_BoardDto> ing_list(int page, String project_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("page", Integer.toString(page));
		map.put("project_state", project_state);
		System.out.println(map);
		List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "ing_list", map);
		return dto;
	}

	// 프로젝트 등록
	@Override
	public int insert(PF_BoardDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(pf_boardNamespace + "insertBoard", dto);
			System.out.println(res);
		} catch (Exception e) {
			System.out.println("insertBoard 에러");
			e.printStackTrace();
		}
		return res;
	}

	// 프로젝트 수정
	@Override
	public int update(PF_BoardDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(pf_boardNamespace + "updateBoard", dto);
		} catch (Exception e) {
			System.out.println("updateBoard 에러");
			e.printStackTrace();
		}
		return res;
	}

	// 프로젝트 디테일
	@Override
	public PF_BoardDto selectOne(int board_no) {

		PF_BoardDto dto = sqlSession.selectOne(pf_boardNamespace + "selectBoard", board_no);
		System.out.println(dto);
		return dto;
	}

	// 프로젝트 삭제
	@Override
	public int delete(int board_no) {
		int res = sqlSession.delete(pf_boardNamespace + "deleteBoard", board_no);
		return res;
	}

	// 프로젝트 금액순 정렬
	@Override
	public List<PF_BoardDto> selectMoneyList(int page) {
		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_boardNamespace + "listPage_Money", page);
		} catch (Exception e) {
			System.out.println("selectList 에러");
			e.printStackTrace();
		}
		return res;
	}

	// 프로젝트 마감임박순 정렬
	@Override
	public List<PF_BoardDto> selectDateList(int page) {
		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_boardNamespace + "listPage_Date", page);
		} catch (Exception e) {
			System.out.println("selectList 에러");
			e.printStackTrace();
		}
		return res;
	}

	// 전체 프로젝트 개수(승인 중인 프로젝트만 센다)
	@Override
	public int totalCount(String project_state) {
		int res = sqlSession.selectOne(pf_boardNamespace + "totalCount", project_state);
		return res;
	}

	// 키워드 검색
	@Override
	public List<PF_BoardDto> search(int page, String board_title, String project_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("page", Integer.toString(page));
		map.put("board_title", board_title);
		map.put("project_state", project_state);
		System.out.println("컨트롤러 : " + page + board_title + project_state);
		List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "search", map);
		System.out.println(dto);

		return dto;
	}

	@Override
	public int totalCount_title(String board_title, String project_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("board_title", board_title);
		map.put("project_state", project_state);
		int res = sqlSession.selectOne(pf_boardNamespace + "totalCount_title", map);
		return res;

	}

	// 카테고리 검색
	@Override
	public List<PF_BoardDto> detail_search1(int page, String category1, String category2, String project_state) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("page", Integer.toString(page));
		map.put("category1", category1);
		map.put("category2", category2);
		map.put("project_state", project_state);
		List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "detail_category1", map);
		System.out.println("daoimple" + category1);
		System.out.println(map);
		return dto;
	}

	@Override
	public int totalCount_detail(String category1, String category2, String project_state) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("category1", category1);
		map.put("category2", category2);
		map.put("project_state", project_state);
		int res = sqlSession.selectOne(pf_boardNamespace + "totalCount_detail", map);
		System.out.println("total:" + res);
		return res;
	}

	// 지원자 모집 중인 프로젝트
	@Override
	public List<PF_BoardDto> ingBoardList(String project_state, int user_no) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("project_state", project_state);
		map.put("user_no", Integer.toString(user_no));
		List<PF_BoardDto> list = new ArrayList<PF_BoardDto>();
		try {
			list = sqlSession.selectList(pf_boardNamespace + "ingBoardList", map);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// 투자중인 프로젝트 리스트
	@Override
	public List<PF_BoardDto> investList(String project_state, int user_no) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("project_state", project_state);
		map.put("user_no", Integer.toString(user_no));
		List<PF_BoardDto> list = new ArrayList<PF_BoardDto>();
		try {
			list = sqlSession.selectList(pf_boardNamespace + "investList", map);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int updateState(int board_no) {

		int res = 0;

		try {
			res = sqlSession.update(pf_boardNamespace + "updateState", board_no);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;
	}

	// 관심상태 변경
	@Override
	public int LikeUpdate(Map<String, Integer> map) {
		int like_update = sqlSession.update(pf_boardNamespace + "LikeUpdate", map);
		return like_update;
	}

	@Override
	public List<PF_BoardDto> likeList(int user_no) {
		List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "Board_like", user_no);
		return dto;
	}

	@Override
	public int totalCount_ing(String project_state) {
		int res = sqlSession.selectOne(pf_boardNamespace + "totalCount_ing", project_state);
		return res;
	}

	@Override
	public List<PF_BoardDto> end_list(int page, String project_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("page", Integer.toString(page));
		map.put("project_state", project_state);
		System.out.println(project_state);
		List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "end_list", map);
		return dto;
	}

	@Override
	public int totalCount_end(String project_state) {
		int res = sqlSession.selectOne(pf_boardNamespace + "totalCount_end", project_state);
		return res;
	}

	// 동민 추가 부분
	// 관리자 검수 신청 온 프로젝트 리스트
	@Override
	public List<PF_BoardDto> selectBoardList_inspection(String project_state) {
		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_boardNamespace + "listPage_inspection", project_state);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;
	}

	// 클라이언트 검수 신청 한 프로젝트 리스트
	@Override
	public List<PF_BoardDto> client_inspectionList(String project_state, int user_no) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("project_state", project_state);
		map.put("user_no", Integer.toString(user_no));

		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_boardNamespace + "listPage_inspection_client", map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;
	}

	// 관리자 검수 신청 한 프로젝트 승인
	@Override
	public int admin_changeProject(int board_no) {
		int res = sqlSession.update(pf_boardNamespace + "admin_changeProject", board_no);
		return res;
	}

	// 관리가 검수 신청 온 프로젝트 폐기
	@Override
	public int admin_deleteproject(int board_no, String project_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("board_no", Integer.toString(board_no));
		map.put("project_state", project_state);
		int res = 0;
		try {
			res = sqlSession.delete(pf_boardNamespace + "admin_deleteproject", map);
		} catch (Exception e) {
			System.out.println("삭제 실패!");
		}
		return res;
	}
}
