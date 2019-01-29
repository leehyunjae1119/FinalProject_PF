package com.klp.pf.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.GroupLayout.SequentialGroup;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_MessageDto;

@Repository
public class PF_MessageDaoImpl implements PF_MessageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//받은 쪽지함 리스트
    @Override
    public List<PF_MessageDto> MessageList_Re(String user_id,int page) {
       Map<String, String> map = new HashMap<String, String>();
       
       map.put("page", Integer.toString(page));
       map.put("user_id", user_id);
       List<PF_MessageDto> MessageList_Re = sqlSession.selectList(pf_messageNamespace+"MessageList_Re",map);
       return MessageList_Re;
    }
    
    //받은 쪽지 개수
    @Override
    public int totalCount_Message_Re(String user_id) {
       int res = sqlSession.selectOne(pf_messageNamespace + "totalCount_Message_Re", user_id);
       return res;
    }
   
    //보낸 쪽지함 리스트
    @Override
    public List<PF_MessageDto> MessageList_Se(String user_id,int page) {
       Map<String, String> map = new HashMap<String, String>();
       
       map.put("page", Integer.toString(page));
       map.put("user_id", user_id);
       List<PF_MessageDto> MessageList_Se = sqlSession.selectList(pf_messageNamespace+"MessageList_Se",map);
       return MessageList_Se;
    }
    
    //보낸 쪽지 개수
    @Override
    public int totalCount_Message_Se(String user_id) {
       int res = sqlSession.selectOne(pf_messageNamespace + "totalCount_Message_Se", user_id);
       return res;
    }
    
	
	//쪽지 읽기
	@Override
	public PF_MessageDto MessageView(int message_no) {
		PF_MessageDto Message_View = sqlSession.selectOne(pf_messageNamespace+"MessageView",message_no);
		return Message_View;
	}
	
	//쪽지 보내기
	@Override
	public int MessageInsert(PF_MessageDto dto) {
		int Message_Insert = sqlSession.insert(pf_messageNamespace+"MessageInsert",dto);
		return Message_Insert;
	}

	//쪽지 삭제
	@Override
	public int MessageDelete(int message_no) {
		int Message_Delete = sqlSession.delete(pf_messageNamespace+"MessageDelete",message_no);
		return Message_Delete;
	}
	
	//쪽지 상태 변경
	@Override
	public int MessageUpdate(int message_no) {
		int Message_Update = sqlSession.update(pf_messageNamespace+"MessageUpdate",message_no);
		return Message_Update;
	}
	
	//받은 쪽지 중 안읽은 쪽지의 개수
	@Override
	public int MessageUnread(String user_id, String message_state) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("message_state", message_state);
		
		int MessageUnread = sqlSession.selectOne(pf_messageNamespace+"MessageUnread",map);
		return MessageUnread;
	}
	
}
