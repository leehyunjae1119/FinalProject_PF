package com.klp.pf.dto;

public class PF_CertificateDto {

	private int certificate_no;
	private int profile_no;
	private String certificate_name;
	private String certificate_agency;
	private String certificate_issueddate;
	
	public PF_CertificateDto() {
		super();
	}
	public PF_CertificateDto(int certificate_no, int profile_no, String certificate_name, String certificate_agency,
			String certificate_issueddate) {
		super();
		this.certificate_no = certificate_no;
		this.profile_no = profile_no;
		this.certificate_name = certificate_name;
		this.certificate_agency = certificate_agency;
		this.certificate_issueddate = certificate_issueddate;
	}
	
	public int getCertificate_no() {
		return certificate_no;
	}
	public void setCertificate_no(int certificate_no) {
		this.certificate_no = certificate_no;
	}
	public int getProfile_no() {
		return profile_no;
	}
	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}
	public String getCertificate_name() {
		return certificate_name;
	}
	public void setCertificate_name(String certificate_name) {
		this.certificate_name = certificate_name;
	}
	public String getCertificate_agency() {
		return certificate_agency;
	}
	public void setCertificate_agency(String certificate_agency) {
		this.certificate_agency = certificate_agency;
	}
	public String getCertificate_issueddate() {
		return certificate_issueddate;
	}
	public void setCertificate_issueddate(String certificate_issueddate) {
		this.certificate_issueddate = certificate_issueddate;
	}
	
}
