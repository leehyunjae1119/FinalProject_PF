package com.klp.pf.model.biz;

import com.klp.pf.dto.PF_UserDto;

public interface PF_UserBiz {
	
	public PF_UserDto selectUser(String user_id);
	public PF_UserDto cast(int user_no);
	public int insertUser(PF_UserDto dto);

	public boolean user_sendEmail(String user_email);
	public boolean user_setEmailCheck(String user_email, String code);
}
