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
	
	@Override
	public List<PF_BoardDto> selectBoardList(int page) {
		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_boardNamespace + "listPage",page);
			System.out.println("dao11"+res);
				
		} catch (Exception e) {
			System.out.println("selectList 에러");
			e.printStackTrace();
		}
		
		return res;
	}


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

	@Override
	public PF_BoardDto selectOne(int board_no) {
		
		PF_BoardDto dto = sqlSession.selectOne(pf_boardNamespace + "selectBoard", board_no);
		System.out.println(dto);
		return dto;
	}


	@Override
	public int delete(int board_no) {
		
		int res = sqlSession.delete(pf_boardNamespace + "deleteBoard", board_no);
		return res;
	}
	
	   
	   //금액순
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
	   
	   //마감임박순
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
	   

	   @Override
	   public int totalCount() {
	      int res = sqlSession.selectOne(pf_boardNamespace + "totalCount");
	      return res;
	   }

	   //키워드 검색
	   @Override
	   public List<PF_BoardDto> search(int page, String board_title) {
	      Map<String, String> map = new HashMap<String, String>();
	      map.put("page", Integer.toString(page));
	      map.put("board_title", board_title);

	      List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "search", map);
	      return dto;
	   }

	   @Override
	   public int totalCount_title(String board_title) {

	      int res = sqlSession.selectOne(pf_boardNamespace + "totalCount_title", board_title);
	      return res;

	   }

	   //카테고리 검색
	   @Override
	   public List<PF_BoardDto> detail_search1(int page, String category1,String category2) {
	      Map<String, String> map = new HashMap<String, String>();

	      map.put("page", Integer.toString(page));
	      map.put("category1", category1);
	      map.put("category2", category2);
	      List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "detail_category1", map);
	      System.out.println("daoimple" + category1);
	      System.out.println(map);
	      return dto;
	   }

	   @Override
	   public int totalCount_detail(String category1, String category2) {
	      Map<String, String> map = new HashMap<String, String>();
	      
	      map.put("category1", category1);
	      map.put("category2", category2);
	      int res = sqlSession.selectOne(pf_boardNamespace + "totalCount_detail", map);
	      System.out.println("total:" + res);
	      return res;
	   }

	   //관심상태 변경
	      @Override
	      public int LikeUpdate(Map<String, Integer> map){
	         int like_update = sqlSession.update(pf_boardNamespace +"LikeUpdate", map);
	         return like_update;
	      }


	      @Override
	      public List<PF_BoardDto> likeList(int user_no) {
	         List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "Board_like",user_no);
	         return dto;
	      }
	   
	      @Override
			public List<PF_BoardDto> ing_list(int page, String project_state) {
			      Map<String, String> map = new HashMap<String, String>();
			      map.put("page", Integer.toString(page));
			      map.put("project_state", project_state);
			      System.out.println(map);
			      List<PF_BoardDto> dto = sqlSession.selectList(pf_boardNamespace + "ing_list", map);
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

	   
	   
	   
}
