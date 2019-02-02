package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_EvaluationDto;

@Repository
public class PF_EvaluationDaoImpl implements PF_EvaluationDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PF_EvaluationDto selectEcaluation(int user_no) {
		return sqlSession.selectOne(pf_evaluationNamespace+"selectEvaluation", user_no);
	}

	@Override
	public List<PF_EvaluationDto> selectEvaluationAll() {
		return sqlSession.selectList(pf_evaluationNamespace+"selectEvaluationAll");
	}

	@Override
	public int insertEvaluation(PF_EvaluationDto dto) {
		return sqlSession.insert(pf_evaluationNamespace+"insertEvaluation", dto);
	}

	@Override
	public List<PF_EvaluationDto> selectAll(int user_no) {
		return sqlSession.selectList(pf_evaluationNamespace+"selectAll", user_no);
	}



}
