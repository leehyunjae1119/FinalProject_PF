package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_TechnologyDto;

public interface PF_TechnologyBiz {

	public int insertTechnology(int profile_no, String tech_type, String tech_skill, String tech_exp);
	public List<PF_TechnologyDto> selectTech(int profile_no);
	public int deleteTechnology(int tech_no);
}
