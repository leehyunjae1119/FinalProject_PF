package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_CareerDto;

public interface PF_CareerBiz {

	public int insertCareer(int profile_no, String career_company, String career_dept, String career_spot, String career_hiredate_year, String career_hiredate_month, String career_firedate_year, String career_firedate_month);
	public List<PF_CareerDto> selectCareer(int profile_no);
	public int deleteCareer(int career_no);
}
