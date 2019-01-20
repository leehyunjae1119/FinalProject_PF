package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_MessageDto;

public interface PF_MessageDao {
	String pf_messageNamespace =  "pf_message.";
	//네임스페이스
	//받은 쪽지함
	public List<PF_MessageDto> selectReMessage(String message_reader);

	//보낸 쪽지함
	public List<PF_MessageDto> selectSeMessage(String message_sender);
	
	//쪽지 보내기
	public int sendMessage(PF_MessageDto dto);
}	
