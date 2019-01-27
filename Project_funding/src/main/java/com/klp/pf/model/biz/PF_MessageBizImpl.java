package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_MessageDto;
import com.klp.pf.model.dao.PF_MessageDao;

@Service
public class PF_MessageBizImpl implements PF_MessageBiz {

	@Autowired
	private PF_MessageDao pf_messagedao;
	
	//받은 쪽지함 리스트
	@Override
	public List<PF_MessageDto> MessageList_Re(String user_id, int page) {
		return pf_messagedao.MessageList_Re(user_id,page);
	}
	
	//받은 쪽지 개수
	@Override
	public int totalCount_Message_Re(String user_id) {
		return pf_messagedao.totalCount_Message_Re(user_id);
	}
	
	//보낸 쪽지함 리스트
	@Override
	public List<PF_MessageDto> MessageList_Se(String user_id, int page) {
		return pf_messagedao.MessageList_Se(user_id, page);
	}
	
	//보낸 쪽지 개수
	@Override
	public int totalCount_Message_Se(String user_id) {
		return pf_messagedao.totalCount_Message_Se(user_id);
	}
	
	//쪽지 읽기
	@Override
	public PF_MessageDto MessageView(int message_no) {
		return pf_messagedao.MessageView(message_no);
	}

	//쪽지 보내기
	@Override
	public int MessageInsert(PF_MessageDto dto) {
		return pf_messagedao.MessageInsert(dto);
	}
	
	//쪽지 삭제
	@Override
	public int MessageDelete(int message_no) {
		return pf_messagedao.MessageDelete(message_no);
	}

	//쪽지 상태 변경
	@Override
	public int MessageUpdate(int message_no) {
		return pf_messagedao.MessageUpdate(message_no);
	}

	//받은 쪽지 중 안읽은 쪽지의 개수
	@Override
	public int MessageUnread(String user_id, String message_state) {
		return pf_messagedao.MessageUnread(user_id, message_state);
	}
}
