package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_MessageDto;

@Service
public interface PF_MessageBiz {
	
	
	//받은 메세지 , 보낸 메세지함
	public List<PF_MessageDto> selectReMessage(String message_reader);
	public List<PF_MessageDto> selectSeMessage(String message_reader);

	//쪽지 보내기
	public int sendMessage(PF_MessageDto dto);
}
