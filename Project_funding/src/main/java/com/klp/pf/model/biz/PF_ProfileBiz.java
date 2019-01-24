package com.klp.pf.model.biz;

import com.klp.pf.dto.PF_ProfileDto;

public interface PF_ProfileBiz {

	public int insertProfile(PF_ProfileDto dto);
	public PF_ProfileDto selectProfile(int user_no);
	public int updateProfile(PF_ProfileDto dto);
	
	
}
