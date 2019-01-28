package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_BoardDto;
import com.klp.pf.dto.PF_CommentDto;
import com.klp.pf.model.dao.PF_CommentDao;

@Service
public class PF_CommentBizImpl implements PF_CommentBiz {

	@Autowired
	private PF_CommentDao pf_commentDao;

	@Override
	public int insert(PF_CommentDto dto) {
		
		return pf_commentDao.insert(dto);
	}

	@Override
	public PF_CommentDto selectOne(PF_CommentDto comment) {
		
		return pf_commentDao.selectOne(comment);
	}

	@Override
	public int update(PF_CommentDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int comment_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PF_CommentDto> selectCommentList(PF_CommentDto dto) {
		
		return pf_commentDao.selectCommentList(dto);
	}

	
}
