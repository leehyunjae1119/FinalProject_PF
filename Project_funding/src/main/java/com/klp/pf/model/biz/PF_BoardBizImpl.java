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
	public List<PF_BoardDto> selectBoardList() {

		return pf_boardDao.selectBoardList();
	}


}
