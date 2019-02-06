package com.klp.pf.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_ApplicantDto;
import com.klp.pf.dto.PF_BoardDto;

@Repository
public class PF_ApplicantDaoImpl implements PF_ApplicantDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<PF_BoardDto> selectAll_partners(int user_no, String applicant_state) {
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("user_no", Integer.toString(user_no));
		param.put("applicant_state", applicant_state);
		
		List<PF_BoardDto> res = new ArrayList<PF_BoardDto>();
		try {
			res = sqlSession.selectList(pf_applicantNamespace + "selectAll_partners", param);
			System.out.println("지원내역 > " + res);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int insert(PF_ApplicantDto dto) {
	
		int res = 0;
		
		try {
			res = sqlSession.insert(pf_applicantNamespace + "applyProject", dto);
			System.out.println(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int applyCount(int board_no) {
		
		int res = 0;
		res = sqlSession.selectOne(pf_applicantNamespace + "applyCount", board_no);
		
		return res;
	}
	
	@Override
	public List<PF_ApplicantDto> recruitmentList(int board_no) {
		return sqlSession.selectList(pf_applicantNamespace + "recruitmentList", board_no);
	}
	@Override
	public int selectionPartners(int applicant_no) {
		return sqlSession.update(pf_applicantNamespace + "selectionPartners", applicant_no);
	}
	@Override
	public int recruitCount(int board_no) {
		return sqlSession.selectOne(pf_applicantNamespace + "recruitCount", board_no);
	}
	
	
}
