package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_CareerDto;

public interface PF_CareerDao {
	String pf_careerNamespace = "pf_career.";
	
	public int insertCareer(List<PF_CareerDto> dtoList);
	public List<PF_CareerDto> selectCareer(int profile_no);
	public int deleteCareer(int career_no);
	
}
