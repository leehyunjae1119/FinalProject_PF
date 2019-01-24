package com.klp.pf.model.dao;

import com.klp.pf.dto.PF_ProfileDto;

public interface PF_ProfileDao {
	String pf_profileNamespace = "pf_profile.";
	//네임스페이스는 테이블명+namespace 로 생성
	
	public int insertProfile(PF_ProfileDto dto);
	public PF_ProfileDto selectProfile(int user_no);
}
