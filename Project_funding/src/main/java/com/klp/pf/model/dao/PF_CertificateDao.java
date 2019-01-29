package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_CertificateDto;

public interface PF_CertificateDao {
	String pf_certificateNamespace = "pf_certificate.";

	public int insertCertificate(List<PF_CertificateDto> dtoList);
	public List<PF_CertificateDto> selectCertificate(int profile_no);
	public int deleteCertificate(int certificate_no);
}
