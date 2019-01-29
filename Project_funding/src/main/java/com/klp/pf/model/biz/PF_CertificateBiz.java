package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_CertificateDto;

public interface PF_CertificateBiz {

	public int insertCertificate(int profile_no, String certificate_name, String certificate_agency, String certificate_issueddate);
	public List<PF_CertificateDto> selectCertificate(int profile_no);
	public int deleteCertificate(int certificate_no);
}
