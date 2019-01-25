package com.klp.pf.model.dao;

import java.util.List;
import java.util.Map;

import com.klp.pf.dto.PF_TechnologyDto;

public interface PF_TechnologyDao {
	String pf_technologyNamespace = "pf_technology.";
	
	public int insertTechnology(List<PF_TechnologyDto> dtoList);
	public List<PF_TechnologyDto> selectTech(int profile_no);
	public int deleteTechnology(int tech_no);
}
