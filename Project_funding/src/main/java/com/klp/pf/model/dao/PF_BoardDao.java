package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_BoardDto;

public interface PF_BoardDao {

	String pf_boardNamespace = "pf_board.";
	
	
	public List<PF_BoardDto> selectBoardList(int page);
	public int insert(PF_BoardDto dto);
	public PF_BoardDto selectOne(int board_no);
	public int update(PF_BoardDto dto);
	public int delete(int board_no);
	public int totalCount();
	
	
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
	   
}
