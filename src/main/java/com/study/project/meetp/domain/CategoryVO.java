package com.study.project.meetp.domain;

public class CategoryVO {
	private String categoryCode;
	private String categoryName;
	
	
	@Override
	public String toString() {
		return "CategoryVO [categoryCode=" + categoryCode + ", categoryName=" + categoryName + "]";
	}
	
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
}
