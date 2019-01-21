package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_BoardDto;

public interface PF_BoardDao {

	String pf_boardNamespace = "pf_board.";
	
	public List<PF_BoardDto> selectBoardList();
	public PF_BoardDto selectBoardCount();
	
}
