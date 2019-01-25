package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_BoardDto;
import com.klp.pf.model.dao.PF_BoardDao;

@Service
public class PF_BoardBizImpl implements PF_BoardBiz {

	@Autowired
	private PF_BoardDao pf_boardDao;
	
	@Override
	public List<PF_BoardDto> selectBoardList(int page) {
		System.out.println("biz"+page);
		return pf_boardDao.selectBoardList(page);
	}

	@Override
	public int totalcount() {
		return pf_boardDao.totalCount();
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


}
