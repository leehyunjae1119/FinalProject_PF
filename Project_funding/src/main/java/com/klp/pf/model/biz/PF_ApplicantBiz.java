package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_ApplicantDto;
import com.klp.pf.dto.PF_BoardDto;

public interface PF_ApplicantBiz {

	public List<PF_BoardDto> selectAll_partners(int user_no, String applicant_state);
	public int insert(PF_ApplicantDto dto);
	public int applyCount(int board_no);
	
	public List<PF_ApplicantDto> recruitmentList(int board_no);

	
	public int selectionPartners(int applicant_no);
	public int recruitCount(int board_no);
	
	public List<PF_ApplicantDto> applicantUserList(int board_no);
}
