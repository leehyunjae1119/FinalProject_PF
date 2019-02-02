package com.klp.pf.model.biz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_EducationDto;
import com.klp.pf.model.dao.PF_EducationDao;

@Service
public class PF_EducationBizImpl implements PF_EducationBiz {

	@Autowired
	private PF_EducationDao pf_dao;
	@Override
	public int insertEducation(int profile_no, String edu_name, String edu_state, String edu_major, String edu_hiredate_year, String edu_hiredate_month, String edu_firedate_year, String edu_firedate_month) {
		List<String> edu_nameList = new ArrayList<String>(Arrays.asList(edu_name.split(",")));
		List<String> edu_stateList = new ArrayList<String>(Arrays.asList(edu_state.split(",")));
		List<String> edu_majorList = new ArrayList<String>(Arrays.asList(edu_major.split(",")));
		List<String> edu_hiredate_yearList = new ArrayList<String>(Arrays.asList(edu_hiredate_year.split(",")));
		List<String> edu_hiredate_monthList = new ArrayList<String>(Arrays.asList(edu_hiredate_month.split(",")));
		List<String> edu_firedate_yearList = new ArrayList<String>(Arrays.asList(edu_firedate_year.split(",")));
		List<String> edu_firedate_monthList = new ArrayList<String>(Arrays.asList(edu_firedate_month.split(",")));

		List<PF_EducationDto> dtoList = new ArrayList<PF_EducationDto>();
		for(int i=0; i<edu_nameList.size();i++) {
			PF_EducationDto dto = new PF_EducationDto(i, profile_no, edu_nameList.get(i), edu_stateList.get(i), edu_majorList.get(i)
					, edu_hiredate_yearList.get(i)+" "+edu_hiredate_monthList.get(i), edu_firedate_yearList.get(i)+" "+edu_firedate_monthList.get(i));
			dtoList.add(dto);
		}
		return pf_dao.insertEducation(dtoList);
	}
	@Override
	public List<PF_EducationDto> selectEducation(int profile_no) {
		return pf_dao.selectEducation(profile_no);
	}
	@Override
	public int deleteEducation(int edu_no) {
		return pf_dao.deleteEducation(edu_no);
	}
}
