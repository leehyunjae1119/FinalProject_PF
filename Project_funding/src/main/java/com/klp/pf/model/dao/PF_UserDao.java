package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_UserDto;

public interface PF_UserDao {
	String pf_userNamespace = "pf_user.";
	//네임스페이스는 테이블명+namespace 로 생성
	
	public PF_UserDto selectUser(String user_id);
	public PF_UserDto login(String user_id, String user_pw);
	public PF_UserDto cast(int user_no);
	public int insertUser(PF_UserDto dto);
	public boolean setUser_email(String user_email);
	public int updateUser_type(PF_UserDto dto);
	public int deleteUser(PF_UserDto dto);
	public int updateUser_Info(PF_UserDto dto);
	public List<PF_UserDto> userList(String user_type);
	public PF_UserDto MessageUser(int user_no);
	public List<PF_UserDto> PartnersList_client(int user_no);
	
	public List<PF_UserDto> partnerlist();
	public List<PF_UserDto> typeUpdatelist();
	public int typeupdateOK(int user_no);
	public PF_UserDto selectEmailToUser(String user_email);
	public String IDcheck(String user_id);
	public int totalUser();

}
