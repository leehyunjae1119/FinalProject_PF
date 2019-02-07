package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_ApplicantDto;
import com.klp.pf.dto.PF_BoardDto;
import com.klp.pf.model.dao.PF_ApplicantDao;

@Service
public class PF_ApplicantBizImpl implements PF_ApplicantBiz {
	
	@Autowired
	private PF_ApplicantDao pf_appliDao;

	@Override
	public List<PF_BoardDto> selectAll_partners(int user_no, String applicant_state) {
		
		return pf_appliDao.selectAll_partners(user_no, applicant_state);
	}

	@Override
	public int insert(PF_ApplicantDto dto) {
		
		return pf_appliDao.insert(dto);
	}

	@Override
	public int applyCount(int board_no) {
		
		return pf_appliDao.applyCount(board_no);
	}

	@Override
	public PF_BoardDto selectApply(int board_no) {
		
		return pf_appliDao.selectApply(board_no);
	}
	
}
