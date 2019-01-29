package com.klp.pf.model.biz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_CertificateDto;
import com.klp.pf.model.dao.PF_CertificateDao;

@Service
public class PF_CertificateBizImpl implements PF_CertificateBiz {
	
	@Autowired
	private PF_CertificateDao pf_dao;
	@Override
	public int insertCertificate(int profile_no, String certificate_name, String certificate_agency, String certificate_issueddate) {
		List<String> certificate_nameList = new ArrayList<String>(Arrays.asList(certificate_name.split(",")));
		List<String> certificate_agencyList = new ArrayList<String>(Arrays.asList(certificate_agency.split(",")));
		List<String> certificate_issueddateList = new ArrayList<String>(Arrays.asList(certificate_issueddate.split(",")));
		
		List<PF_CertificateDto> dtoList = new ArrayList<PF_CertificateDto>();

		for(int i=0; i<certificate_nameList.size(); i++) {
			PF_CertificateDto dto = new PF_CertificateDto(i, profile_no, certificate_nameList.get(i), certificate_agencyList.get(i), certificate_issueddateList.get(i));
			dtoList.add(dto);
		}
		return pf_dao.insertCertificate(dtoList);
	}
	@Override
	public List<PF_CertificateDto> selectCertificate(int profile_no) {
		return pf_dao.selectCertificate(profile_no);
	}
	@Override
	public int deleteCertificate(int certificate_no) {
		return pf_dao.deleteCertificate(certificate_no);
	}
}
