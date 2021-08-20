package com.study.project.commons.paging;

public class Criteria {

	/**
	 * page : 현재 페이지 번호
	 * perPageNum : 페이지 당 출력되는 게시글의 갯수
	 * Criteria() : 기본생성자, 현재페이지를 1, 페이지당 출력할 게시글의 갯수를 10으로 기본 세팅
	 * set
	 * get 
	 */
	
	
    private int page;
    private int perPageNum;

//    private String type;
//    private String keyword;

    public Criteria() {
        this.page = 1;
        this.perPageNum = 10;
    }

    public void setPage(int page) {
    	
    	if(page <= 0 ) {
    		this.page = 1;
    		return;
    	}
    	
    	this.page = page;
    }
    
    public int getPage() {
    	return page;
    }
    
    public void setPerPageNum(int perPageNum) {
    	//둘 중에  하나라도 참이면 ~
    	if (perPageNum <= 0 || perPageNum > 100) {
    		this.perPageNum = 10;
    		return;
    	}
    	
    	this.perPageNum = perPageNum;
    }
    
    public int getPerPageNum() {
    	return this.perPageNum;
    }
    
    public int getPageStart() {
    	return (this.page - 1) * perPageNum;
    }

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}


    
    
    
    
//    public Criteria(int pageNum, int amount) {
//        this.page = pageNum;
//        this.perPageNum = amount;
//    }
//
//    //루프를 돌리기 위해
//    public String[] getTypeArr() {
//        return type == null ? new String[] {}: type.split("");
//    }
//
//    // getter, setter, toString() ...
//
//    @Override
//    public String toString() {
//        return "Criteria{" +
//                "pageNum=" + pageNum +
//                ", amount=" + amount +
//                ", type='" + type + '\'' +
//                ", keyword='" + keyword + '\'' +
//                '}';
//    }
//
//    public int getPageNum() {
//        return pageNum;
//    }
//
//    public void setPageNum(int pageNum) {
//        this.pageNum = pageNum;
//    }
//
//    public int getAmount() {
//        return amount;
//    }
//
//    public void setAmount(int amount) {
//        this.amount = amount;
//    }
//
//    public String getType() {
//        return type;
//    }
//
//    public void setType(String type) {
//        this.type = type;
//    }
//
//    public String getKeyword() {
//        return keyword;
//    }
//
//    public void setKeyword(String keyword) {
//        this.keyword = keyword;
//    }

}
