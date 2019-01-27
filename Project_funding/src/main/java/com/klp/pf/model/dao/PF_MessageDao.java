package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_MessageDto;

public interface PF_MessageDao {
	
	String pf_messageNamespace =  "pf_message.";
	
	
	//받은 쪽지함 리스트
    public List<PF_MessageDto> MessageList_Re(String user_id,int page);
    //받은 쪽지 개수
    public int totalCount_Message_Re(String user_id);
    
    //보낸 쪽지함 리스트
    public List<PF_MessageDto> MessageList_Se(String user_id,int page);
    //보낸 쪽지 개수
    public int totalCount_Message_Se(String user_id);
    
	//쪽지 읽기
	public PF_MessageDto MessageView(int message_no);
	
	//쪽지 보내기
	public int MessageInsert(PF_MessageDto dto);

	//쪽지 삭제
	public int MessageDelete(int message_no);
	
	//쪽지 상태 변경
	public int MessageUpdate(int message_no);
	
	//받은 쪽지 중 안읽은 쪽지의 개수
	public int MessageUnread(String user_id, String message_state);
	
	
}	
