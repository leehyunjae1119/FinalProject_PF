package com.klp.pf.model.biz;

import com.klp.pf.dto.PF_UserDto;

public interface PF_Biz {
	
	public PF_UserDto selectUser(String user_id);
	public int insertUser(PF_UserDto dto);

}
