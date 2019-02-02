package com.klp.pf.dto;

public class PF_EvaluationDto {
	private int evaluation_no;
	private String evaluation_writer;
	private String evaluation_object;
	private int evaluation_item1;
	private int evaluation_item2;
	private int evaluation_item3;
	private String evaluation_content;
	private float item1;
	private float item2;
	private float item3;
	private String user_id;
	
	
	public PF_EvaluationDto(String evaluation_writer, String evaluation_object, int evaluation_item1,
			int evaluation_item2, int evaluation_item3, String evaluation_content) {
		super();
		this.evaluation_writer = evaluation_writer;
		this.evaluation_object = evaluation_object;
		this.evaluation_item1 = evaluation_item1;
		this.evaluation_item2 = evaluation_item2;
		this.evaluation_item3 = evaluation_item3;
		this.evaluation_content = evaluation_content;
	}
	public PF_EvaluationDto() {
		super();
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getEvaluation_no() {
		return evaluation_no;
	}
	public void setEvaluation_no(int evaluation_no) {
		this.evaluation_no = evaluation_no;
	}
	public String getEvaluation_writer() {
		return evaluation_writer;
	}
	public void setEvaluation_writer(String evaluation_writer) {
		this.evaluation_writer = evaluation_writer;
	}
	public String getEvaluation_object() {
		return evaluation_object;
	}
	public void setEvaluation_object(String evaluation_object) {
		this.evaluation_object = evaluation_object;
	}
	public int getEvaluation_item1() {
		return evaluation_item1;
	}
	public void setEvaluation_item1(int evaluation_item1) {
		this.evaluation_item1 = evaluation_item1;
	}
	public int getEvaluation_item2() {
		return evaluation_item2;
	}
	public void setEvaluation_item2(int evaluation_item2) {
		this.evaluation_item2 = evaluation_item2;
	}
	public int getEvaluation_item3() {
		return evaluation_item3;
	}
	public void setEvaluation_item3(int evaluation_item3) {
		this.evaluation_item3 = evaluation_item3;
	}
	public String getEvaluation_content() {
		return evaluation_content;
	}
	public void setEvaluation_content(String evaluation_content) {
		this.evaluation_content = evaluation_content;
	}
	public float getItem1() {
		return item1;
	}
	public void setItem1(float item1) {
		this.item1 = item1;
	}
	public float getItem2() {
		return item2;
	}
	public void setItem2(float item2) {
		this.item2 = item2;
	}
	public float getItem3() {
		return item3;
	}
	public void setItem3(float item3) {
		this.item3 = item3;
	}
	
	

	
}
