package com.klp.pf.model.biz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_TechnologyDto;
import com.klp.pf.model.dao.PF_TechnologyDao;


@Service
public class PF_TechnologyBizImpl implements PF_TechnologyBiz {

	@Autowired
	private PF_TechnologyDao pf_dao;
	
	@Override
	public int insertTechnology(int profile_no, String tech_type, String tech_skill, String tech_exp) {
		List<String> tech_typeList = new ArrayList<String>(Arrays.asList(tech_type.split(",")));
		List<String> tech_skillList = new ArrayList<String>(Arrays.asList(tech_skill.split(",")));
		List<String> tech_expList = new ArrayList<String>(Arrays.asList(tech_exp.split(",")));
		
		List<PF_TechnologyDto> dtoList = new ArrayList<PF_TechnologyDto>();
		
		for(int i=0; i<tech_typeList.size();i++) {
			PF_TechnologyDto dto = new PF_TechnologyDto(i, profile_no, tech_typeList.get(i), tech_skillList.get(i), tech_expList.get(i));
			dtoList.add(dto);
		}
		return pf_dao.insertTechnology(dtoList);
	}
	
	@Override
	public List<PF_TechnologyDto> selectTech(int profile_no) {
		return pf_dao.selectTech(profile_no);
	}
	
	@Override
	public int deleteTechnology(int tech_no) {
		return pf_dao.deleteTechnology(tech_no);
	}

}
