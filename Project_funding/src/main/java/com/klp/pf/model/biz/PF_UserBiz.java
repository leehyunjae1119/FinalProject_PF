package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_UserDto;

public interface PF_UserBiz {
	
	public PF_UserDto selectUser(String user_id);
	public PF_UserDto cast(int user_no);
	public int insertUser(PF_UserDto dto);

	public boolean user_sendEmail(String user_email);
	public boolean user_setEmailCheck(String user_email, String code);
	
	public List<PF_UserDto> userlist(String user_type);
	public PF_UserDto MessageUser(int user_no);
	public List<PF_UserDto> PartnersList_client(int user_no);

}
	