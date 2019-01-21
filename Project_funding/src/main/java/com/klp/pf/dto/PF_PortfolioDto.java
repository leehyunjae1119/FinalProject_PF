package com.klp.pf.dto;

import java.util.Date;

public class PF_PortfolioDto {
	
	private int portfolio_no;
	private int profile_no;
	private String portfolio_title;
	private Date portfolio_start_day;
	private Date portfolio_end_day;
	private int portfolio_participation;
	private String portfolio_content;
	private String portfolio_file;
	
	
	public PF_PortfolioDto() {
		super();
	}
	public PF_PortfolioDto(int portfolio_no, int profile_no, String portfolio_title, Date portfolio_start_day,
			Date portfolio_end_day, int portfolio_participation, String portfolio_content, String portfolio_file) {
		super();
		this.portfolio_no = portfolio_no;
		this.profile_no = profile_no;
		this.portfolio_title = portfolio_title;
		this.portfolio_start_day = portfolio_start_day;
		this.portfolio_end_day = portfolio_end_day;
		this.portfolio_participation = portfolio_participation;
		this.portfolio_content = portfolio_content;
		this.portfolio_file = portfolio_file;
	}
	
	public PF_PortfolioDto(int profile_no, String portfolio_title, Date portfolio_start_day, Date portfolio_end_day,
			int portfolio_participation, String portfolio_content, String portfolio_file) {
		super();
		this.profile_no = profile_no;
		this.portfolio_title = portfolio_title;
		this.portfolio_start_day = portfolio_start_day;
		this.portfolio_end_day = portfolio_end_day;
		this.portfolio_participation = portfolio_participation;
		this.portfolio_content = portfolio_content;
		this.portfolio_file = portfolio_file;
	}
	public int getPortfolio_no() {
		return portfolio_no;
	}
	public void setPortfolio_no(int portfolio_no) {
		this.portfolio_no = portfolio_no;
	}
	public int getProfile_no() {
		return profile_no;
	}
	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}
	public String getPortfolio_title() {
		return portfolio_title;
	}
	public void setPortfolio_title(String portfolio_title) {
		this.portfolio_title = portfolio_title;
	}
	public Date getPortfolio_start_day() {
		return portfolio_start_day;
	}
	public void setPortfolio_start_day(Date portfolio_start_day) {
		this.portfolio_start_day = portfolio_start_day;
	}
	public Date getPortfolio_end_day() {
		return portfolio_end_day;
	}
	public void setPortfolio_end_day(Date portfolio_end_day) {
		this.portfolio_end_day = portfolio_end_day;
	}
	public int getPortfolio_participation() {
		return portfolio_participation;
	}
	public void setPortfolio_participation(int portfolio_participation) {
		this.portfolio_participation = portfolio_participation;
	}
	public String getPortfolio_content() {
		return portfolio_content;
	}
	public void setPortfolio_content(String portfolio_content) {
		this.portfolio_content = portfolio_content;
	}
	public String getPortfolio_file() {
		return portfolio_file;
	}
	public void setPortfolio_file(String portfolio_file) {
		this.portfolio_file = portfolio_file;
	}
	
	
}
