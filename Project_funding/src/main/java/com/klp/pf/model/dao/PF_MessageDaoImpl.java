package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_MessageDto;

@Repository
public class PF_MessageDaoImpl implements PF_MessageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//받은 쪽지함
	@Override
	public List<PF_MessageDto> selectReMessage(String message_reader) {
		List<PF_MessageDto> dto01 = sqlSession.selectList(pf_messageNamespace+"selectReMessage",message_reader);
		return dto01;
	}

	//보낸 쪽지함
	@Override
	public List<PF_MessageDto> selectSeMessage(String message_sender) {
		List<PF_MessageDto> dto02 = sqlSession.selectList(pf_messageNamespace+"selectSeMessage",message_sender);
		return dto02;
	}

	//쪽지 보내기
	@Override
	public int sendMessage(PF_MessageDto dto) {
		int senddto = sqlSession.insert(pf_messageNamespace+"sendMessage",dto);
		return senddto;
	}
}
