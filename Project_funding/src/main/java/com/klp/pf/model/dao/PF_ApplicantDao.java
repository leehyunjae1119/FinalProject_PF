package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_ApplicantDto;
import com.klp.pf.dto.PF_BoardDto;

public interface PF_ApplicantDao {
	
	String pf_applicantNamespace = "pf_applicant.";
	
	//파트너스 - 지원내역 (내가 어느 프로젝트에 지원했는지 보여줌)
	public List<PF_BoardDto> selectAll_partners(int user_no, String applicant_state);
	public int insert(PF_ApplicantDto dto);
	public int applyCount(int board_no);
	public PF_BoardDto selectApply(int board_no);
	
	//클라이언트 (내가 등록한 프로젝트에 지원한 사람들을 보여줌)
	public List<PF_ApplicantDto> recruitmentList(int board_no);
	
	public int selectionPartners(int applicant_no);
	public int recruitCount(int board_no); 

	public List<PF_ApplicantDto> applicantUserList(int board_no);
}
