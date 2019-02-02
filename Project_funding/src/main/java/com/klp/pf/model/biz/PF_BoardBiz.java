package com.klp.pf.model.biz;

import java.util.List;


import com.klp.pf.dto.PF_BoardDto;

public interface PF_BoardBiz {

	
	public List<PF_BoardDto> selectBoardList(int page);
	public int totalcount();
	public int insert(PF_BoardDto dto);
	public PF_BoardDto selectOne(int board_no);
	public int update(PF_BoardDto dto);
	public int delete(int board_no);
	
	
	
	   //keyword 검색
	   public List<PF_BoardDto> search(int page,String board_title);
	   public int totalCount_title(String board_title);
	   
	   //금액순 리스트
	   public List<PF_BoardDto> selectMoneyList(int page);
	   
	   //마감순
	   public List<PF_BoardDto> selectDateList(int page);
	   //카테고리 검색
	   public List<PF_BoardDto> detail_search1(int page,String category1,String category2);
	   public int totalCount_detail(String category1, String category2);
	   
//진행중인 프로젝트 리스트 
	   
	   public List<PF_BoardDto> ing_list(int page,String project_state);
	   public int totalCount_ing(String project_state);
	   
	   //완료된 프로젝트 리스트
	   public List<PF_BoardDto> end_list(int page,String project_state);
	   public int totalCount_end(String project_state);


	 //관심상태 변경
	      public int LikeUpdate(int board_no, int likeuser_no);
	      
	      public List<PF_BoardDto> likeList(int user_no);
}
