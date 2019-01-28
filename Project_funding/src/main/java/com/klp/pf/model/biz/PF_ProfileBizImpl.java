package com.klp.pf.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_ProfileDto;
import com.klp.pf.model.dao.PF_ProfileDao;

@Service
public class PF_ProfileBizImpl implements PF_ProfileBiz {
	
	@Autowired
	private PF_ProfileDao pf_dao;
	
	@Override
	public int insertProfile(PF_ProfileDto dto) {
		return pf_dao.insertProfile(dto);
	}
	
	@Override
	public PF_ProfileDto selectProfile(int user_no) {
		return pf_dao.selectProfile(user_no);
	}
	@Override
	public int updateProfile(PF_ProfileDto dto) {
		return pf_dao.updateProfile(dto);
	}
}
