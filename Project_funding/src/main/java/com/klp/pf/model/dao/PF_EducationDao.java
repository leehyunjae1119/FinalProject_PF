package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_EducationDto;

public interface PF_EducationDao {
	String pf_educationNamespace = "pf_education.";

	public int insertEducation(List<PF_EducationDto> dtoList);
	public List<PF_EducationDto> selectEducation(int profile_no);
	public int deleteEducation(int edu_no);
}
