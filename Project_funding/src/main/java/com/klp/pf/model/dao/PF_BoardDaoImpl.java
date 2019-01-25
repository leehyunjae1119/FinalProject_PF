package com.klp.pf.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.javassist.bytecode.Descriptor.Iterator;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_BoardDto;

@Repository
public class PF_BoardDaoImpl implements PF_BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<PF_BoardDto> selectBoardList(int page) {
		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_boardNamespace + "listPage",page);
			System.out.println("dao11"+res);
				
		} catch (Exception e) {
			System.out.println("selectList 에러");
			e.printStackTrace();
		}
		
		return res;
	}


	@Override
	public int totalCount() {
		int res = sqlSession.selectOne(pf_boardNamespace+"totalCount");
		System.out.println("totalcount :" + res);
		return res;
	}

	@Override
	public int insert(PF_BoardDto dto) {

		int res = 0;
		
		try {
			res = sqlSession.insert(pf_boardNamespace + "insertBoard", dto);		
			System.out.println(res);
		} catch (Exception e) {
			System.out.println("insertBoard 에러");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int update(PF_BoardDto dto) {
		
		int res = 0;
		
		try {
			res = sqlSession.update(pf_boardNamespace + "updateBoard", dto);
		} catch (Exception e) {
			System.out.println("updateBoard 에러");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public PF_BoardDto selectOne(int board_no) {
		
		PF_BoardDto dto = sqlSession.selectOne(pf_boardNamespace + "selectBoard", board_no);
		System.out.println(dto);
		return dto;
	}


	@Override
	public int delete(int board_no) {
		
		int res = sqlSession.delete(pf_boardNamespace + "deleteBoard", board_no);
		return res;
	}

}
