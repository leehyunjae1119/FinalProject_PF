package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_BoardDto;

@Repository
public class PF_BoardDaoImpl implements PF_BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<PF_BoardDto> selectBoardList() {
		List<PF_BoardDto> res = null;
		
		try {
			res = sqlSession.selectList(pf_boardNamespace + "selectBoardList");
		} catch (Exception e) {
			System.out.println("selectList 에러");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public PF_BoardDto selectBoardCount() {
		
		PF_BoardDto dto = new PF_BoardDto();
		
		try {
			
		} catch (Exception e) {
			
		}
		
		return null;
		
	}

}
