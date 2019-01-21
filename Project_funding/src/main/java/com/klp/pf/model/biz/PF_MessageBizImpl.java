package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.klp.pf.dto.PF_MessageDto;
import com.klp.pf.model.dao.PF_MessageDao;

public class PF_MessageBizImpl implements PF_MessageBiz {

	@Autowired
	private PF_MessageDao pf_messagedao;
	
	@Override
	public List<PF_MessageDto> selectReMessage(String message_reader) {
		return pf_messagedao.selectReMessage(message_reader);
	}

	@Override
	public List<PF_MessageDto> selectSeMessage(String message_sender) {
		return pf_messagedao.selectSeMessage(message_sender);
	}

	@Override
	public int sendMessage(PF_MessageDto dto) {
		return pf_messagedao.sendMessage(dto);
	}

}
