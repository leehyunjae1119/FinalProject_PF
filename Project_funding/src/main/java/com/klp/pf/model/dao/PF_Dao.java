package com.klp.pf.model.dao;

import com.klp.pf.dto.PF_UserDto;

public interface PF_Dao {
	String pf_userNamespace = "pf_user.";
	
	public PF_UserDto selectUser(String user_id);
	

}
