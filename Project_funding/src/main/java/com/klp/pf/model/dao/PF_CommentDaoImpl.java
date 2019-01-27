package com.klp.pf.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_CommentDto;

@Repository
public class PF_CommentDaoImpl implements PF_CommentDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<PF_CommentDto> selectCommentList(PF_CommentDto dto) {
		
		List<PF_CommentDto> res = new ArrayList<PF_CommentDto>();
		
		try {
			res = sqlSession.selectList(pf_commentNamespace + "selectCommentList", dto);
		} catch (Exception e) {
			System.out.println("selectCommentList 에러");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int insert(PF_CommentDto dto) {
		
		int res = 0;
		
		try {
			res = sqlSession.insert(pf_commentNamespace + "insertComment", dto);
		} catch (Exception e) {
			System.out.println("insertComment 에러");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public PF_CommentDto selectOne(PF_CommentDto comment) {
		
		PF_CommentDto res = null;
		try {
			res = sqlSession.selectOne(pf_commentNamespace + "selectComment", comment);
			System.out.println("res >> " + res);
		} catch (Exception e) {
			System.out.println("댓글 조회 실패");
			e.printStackTrace();
		} 
		
		return res;
	}

	@Override
	public int update(PF_CommentDto dto) {
		
		return 0;
	}

	@Override
	public int delete(int comment_no) {
		
		return 0;
	}

	
	
}
