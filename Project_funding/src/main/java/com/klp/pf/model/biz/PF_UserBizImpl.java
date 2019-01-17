package com.klp.pf.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_UserDto;
import com.klp.pf.model.dao.PF_Dao;

@Service
public class PF_UserBizImpl implements PF_Biz {
	
	@Autowired
	private PF_Dao pf_dao;

	@Override
	public PF_UserDto selectUser(String user_id) {
		return pf_dao.selectUser(user_id);
	}
	@Override
	public int insertUser(PF_UserDto dto) {
		return pf_dao.insertUser(dto);
	}
}
