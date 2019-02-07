package com.klp.pf.model.dao;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_UserDto;

@Repository
public class PF_UserDaoImpl implements PF_UserDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PF_UserDto selectUser(String user_id) {
		PF_UserDto dto = sqlSession.selectOne(pf_userNamespace+"selectUser", user_id);
		return dto;
	}
	@Override
	public PF_UserDto login(String user_id, String user_pw) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("user_pw", user_pw);
		PF_UserDto dto = sqlSession.selectOne(pf_userNamespace+"login", map);	
		return dto;
	}
	@Override
	public int insertUser(PF_UserDto dto) {
		int res = sqlSession.insert(pf_userNamespace+"insertUser", dto);
		int user_no = 0;
		if(res > 0) {
			user_no = dto.getUser_no();
		}
		return user_no;
	}
	@Override
	public boolean setUser_email(String user_email) {
		int res = sqlSession.update(pf_userNamespace+"setEmail", user_email);
		return (res > 0) ? true : false;
	}
	@Override
	public int updateUser_type(PF_UserDto dto) {
		return sqlSession.update(pf_userNamespace+"updateUser_type", dto);
	}
	@Override
	public int deleteUser(PF_UserDto dto) {
		return sqlSession.update(pf_userNamespace+"deleteUser", dto);
	}
	@Override
	public int updateUser_Info(PF_UserDto dto) {
		return sqlSession.update(pf_userNamespace+"updateUser_Info", dto);
	}
	@Override
	public List<PF_UserDto> userList(String user_type) {
		List<PF_UserDto> userlist = sqlSession.selectList(pf_userNamespace+"userlist",user_type);
		return userlist;
	}
	@Override
	public PF_UserDto MessageUser(int user_no) {
		PF_UserDto messageuser = sqlSession.selectOne(pf_userNamespace+"MessageUser",user_no);
		return messageuser;
	
	}	
	@Override
	public PF_UserDto cast(int user_no) {
		PF_UserDto res = sqlSession.selectOne(pf_userNamespace+"cast",user_no);
		return res;
	}

	@Override
	public List<PF_UserDto> PartnersList_client(int user_no) {
		
		List<PF_UserDto> res = sqlSession.selectList(pf_userNamespace + "PartnersList_client", user_no);
		return res;
	}

	@Override
	public List<PF_UserDto> partnerlist() {
		List<PF_UserDto> partnerlist = sqlSession.selectList(pf_userNamespace+"partnerlist");
		return partnerlist;
	}
	
	@Override
	   public List<PF_UserDto> typeUpdatelist() {   
	      List<PF_UserDto> typeuplist = sqlSession.selectList(pf_userNamespace+"admin_typeUpdate");
	      return typeuplist;
	   }
	@Override
	  public int typeupdateOK(int user_no) {   
	     return sqlSession.update(pf_userNamespace+"typeupdateOK",user_no);
	  }
	
	@Override
	public PF_UserDto selectEmailToUser(String user_email) {
		return sqlSession.selectOne(pf_userNamespace+"selectEmailToUser", user_email);
	}
	
	@Override
	public String IDcheck(String user_id) {
		String User_Id = null;
		Map<String, String> map  = new HashMap<String, String>();
		map.put("user_id", user_id);
		try {
			User_Id = sqlSession.selectOne(pf_userNamespace+"IDcheck",map);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return User_Id;
	}
	@Override
	public int totalUser() {
		int res = sqlSession.selectOne(pf_userNamespace+"totalUser");
	      return res;
	}
}
