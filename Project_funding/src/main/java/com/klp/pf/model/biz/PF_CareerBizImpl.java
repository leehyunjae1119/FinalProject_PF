package com.klp.pf.model.biz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_CareerDto;
import com.klp.pf.model.dao.PF_CareerDao;

@Service
public class PF_CareerBizImpl implements PF_CareerBiz {

	@Autowired
	private PF_CareerDao pf_dao;
	
	@Override
	public int insertCareer(int profile_no, String career_company, String career_dept, String career_spot, String career_hiredate_year, String career_hiredate_month, String career_firedate_year, String career_firedate_month) {
		List<String> career_companyList = new ArrayList<String>(Arrays.asList(career_company.split(",")));
		List<String> career_deptList = new ArrayList<String>(Arrays.asList(career_dept.split(",")));
		List<String> career_spotList = new ArrayList<String>(Arrays.asList(career_spot.split(",")));
		List<String> career_hiredate_yearList = new ArrayList<String>(Arrays.asList(career_hiredate_year.split(",")));
		List<String> career_hiredate_monthList = new ArrayList<String>(Arrays.asList(career_hiredate_month.split(",")));
		List<String> career_firedate_yearList = new ArrayList<String>(Arrays.asList(career_firedate_year.split(",")));
		List<String> career_firedate_monthList = new ArrayList<String>(Arrays.asList(career_firedate_month.split(",")));
		
		List<PF_CareerDto> dtoList = new ArrayList<PF_CareerDto>();
		
		for(int i=0; i<career_companyList.size(); i++) {
			PF_CareerDto dto = new PF_CareerDto(i, profile_no, career_companyList.get(i), career_deptList.get(i), career_spotList.get(i)
					, career_hiredate_yearList.get(i) + " " + career_hiredate_monthList.get(i), career_firedate_yearList.get(i) + " " + career_firedate_monthList.get(i));
			dtoList.add(dto);
		}
		
		return pf_dao.insertCareer(dtoList);
	}
	@Override
	public List<PF_CareerDto> selectCareer(int profile_no) {
		return pf_dao.selectCareer(profile_no);
	}
	@Override
	public int deleteCareer(int career_no) {
		return pf_dao.deleteCareer(career_no);
	}
}
