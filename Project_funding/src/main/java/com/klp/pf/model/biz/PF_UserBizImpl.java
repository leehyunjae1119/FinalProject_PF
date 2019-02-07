package com.klp.pf.model.biz;

import java.util.List;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_UserDto;
import com.klp.pf.model.dao.PF_UserDao;

import util.Gmail;
import util.SHA256;

@Service
public class PF_UserBizImpl implements PF_UserBiz {
	
	@Autowired
	private PF_UserDao pf_dao;

	@Override
	public PF_UserDto selectUser(String user_id) {
		return pf_dao.selectUser(user_id);
	}
	@Override
	public PF_UserDto login(String user_id, String user_pw) {
		return pf_dao.login(user_id, user_pw);
	}
	@Override
	public int insertUser(PF_UserDto dto) {
		dto.setUser_img("resources/assets/img/남자.png");
		
		return pf_dao.insertUser(dto);
	}
	@Override
	public boolean user_sendEmail(String user_email) {
		String host = "http://localhost:8787/pf/emailCheck.do";
		String from = "danepo91@gmail.com";
		String to = user_email;
		String subject = "PUDING 회원가입 이메일 인증 서비스 입니다.";
		String content = "다음 링크에 접속하여 이메일 인증을 완료하세요!<br>"+
			"<a href='"+host+"?user_email="+user_email+"&code="+new SHA256().getSHA256(to)+"'>인증하기</a>";
		System.out.println(user_email);
		Properties p = new Properties();
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.googlemail.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable","true");
		p.put("mail.smtp.auth","true");
		p.put("mail.smtp.debug","true");
		p.put("mail.smtp.socketFactory.port","465");
		p.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback","false");
		
		
		try{
			Authenticator auth = new Gmail();
			Session ses = Session.getInstance(p, auth);
			ses.setDebug(true);
			MimeMessage msg = new MimeMessage(ses);
			msg.setSubject(subject);
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr);
			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO,toAddr);
			msg.setContent(content,"text/html;charset=UTF8");
			Transport.send(msg);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean user_setEmailCheck(String user_email, String code) {
		boolean isRight = (new SHA256().getSHA256(user_email).equals(code)) ? true : false;
		
		if(isRight == true){
			pf_dao.setUser_email(user_email);
			//인증 성공시
			return true;
		}
		//인증 실패시(코드 유효 시간 오버)
		return false;
	}
	
	@Override
	public int updateUser_type(PF_UserDto dto) {
		return pf_dao.updateUser_type(dto);
	}
	@Override
	public int deleteUser(PF_UserDto dto) {
		return pf_dao.deleteUser(dto);
	}
	@Override
	public int updateUser_Info(PF_UserDto dto) {
		return pf_dao.updateUser_Info(dto);
	}
	@Override
	public List<PF_UserDto> userlist(String user_type) {
		return pf_dao.userList(user_type);
	}
	@Override
	public PF_UserDto MessageUser(int user_no) {
		return pf_dao.MessageUser(user_no);
	}
	@Override
	public PF_UserDto cast(int user_no) {
		return pf_dao.cast(user_no);
	}
	
	@Override
	public List<PF_UserDto> PartnersList_client(int user_no) {
		
		return pf_dao.PartnersList_client(user_no);
	}
	
	public List<PF_UserDto> partnerlist(String user_type) {
		return pf_dao.partnerlist(user_type);
	}
}
