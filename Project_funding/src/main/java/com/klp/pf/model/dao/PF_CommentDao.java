package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_CommentDto;

public interface PF_CommentDao {

	String pf_commentNamespace = "pf_comment.";
	
	public List<PF_CommentDto> selectCommentList(PF_CommentDto dto);
	public int insert(PF_CommentDto dto);
	public PF_CommentDto selectOne(PF_CommentDto comment);
	public int update(PF_CommentDto dto);
	public int delete(int comment_no);
	
}
