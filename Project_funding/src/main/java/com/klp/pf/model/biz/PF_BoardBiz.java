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
}
