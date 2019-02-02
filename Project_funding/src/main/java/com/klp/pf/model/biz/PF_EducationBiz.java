package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_EducationDto;

public interface PF_EducationBiz {

	public int insertEducation(int profile_no, String edu_name, String edu_state, String edu_major, String edu_hiredate_year, String edu_hiredate_month, String edu_firedate_year, String edu_firedate_month);
	public List<PF_EducationDto> selectEducation(int profile_no);
	public int deleteEducation(int edu_no);
}
