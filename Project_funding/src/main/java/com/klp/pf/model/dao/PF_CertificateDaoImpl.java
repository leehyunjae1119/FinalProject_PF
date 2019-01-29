package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_CertificateDto;

@Repository
public class PF_CertificateDaoImpl implements PF_CertificateDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertCertificate(List<PF_CertificateDto> dtoList) {
		return sqlSession.update(pf_certificateNamespace+"insertCertificate", dtoList);
	}

	@Override
	public List<PF_CertificateDto> selectCertificate(int profile_no) {
		return sqlSession.selectList(pf_certificateNamespace+"selectCertificate", profile_no);
	}

	@Override
	public int deleteCertificate(int certificate_no) {
		return sqlSession.delete(pf_certificateNamespace+"deleteCertificate", certificate_no);
	}

}
