package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_EvaluationDto;
import com.klp.pf.model.dao.PF_EvaluationDao;

@Service
public class PF_EvaluationBizImpl implements PF_EvaluationBiz {

	@Autowired
	private PF_EvaluationDao pf_dao;
	
	@Override
	public PF_EvaluationDto selectEcaluation(int user_no) {
		return pf_dao.selectEcaluation(user_no);
	}

	@Override
	public List<PF_EvaluationDto> selectEvaluationAll() {
		return pf_dao.selectEvaluationAll();
	}

	@Override
	public int insertEvaluation(PF_EvaluationDto dto) {
		return pf_dao.insertEvaluation(dto);
	}

	@Override
	public List<PF_EvaluationDto> selectAll(int user_no) {
		return pf_dao.selectAll(user_no);
	}

}
