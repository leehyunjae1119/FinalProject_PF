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
}
