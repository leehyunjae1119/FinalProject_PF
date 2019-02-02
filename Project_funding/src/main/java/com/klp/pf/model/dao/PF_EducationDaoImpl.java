package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_EducationDto;

@Repository
public class PF_EducationDaoImpl implements PF_EducationDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertEducation(List<PF_EducationDto> dtoList) {
		return sqlSession.update(pf_educationNamespace+"insertEducation", dtoList);
	}

	@Override
	public List<PF_EducationDto> selectEducation(int profile_no) {
		return sqlSession.selectList(pf_educationNamespace+"selectEducation", profile_no);
	}

	@Override
	public int deleteEducation(int edu_no) {
		return sqlSession.delete(pf_educationNamespace+"deleteEducation", edu_no);
	}

}
