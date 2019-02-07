package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_EvaluationDto;

public interface PF_EvaluationDao {
	String pf_evaluationNamespace = "pf_evaluation.";

	// 개인에 대한 평가 평균
	public PF_EvaluationDto selectEcaluation(String user_id);

	// 평가 평균 전체리스트
	public List<PF_EvaluationDto> selectEvaluationAll();

	// 평가 등록
	public int insertEvaluation(PF_EvaluationDto dto);

	// 개인에 대한 평가 리스트
	public List<PF_EvaluationDto> selectAll(String user_id);

}
