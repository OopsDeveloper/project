package com.study.project.mystudy.domain;

public class TodoVO {

		private String todo;
		private int myStudyNum;

		@Override
		public String toString() {
			return "TodoVO [todo=" + todo + ", myStudyNum=" + myStudyNum + "]";
		}
		public String getTodo() {
			return todo;
		}
		public void setTodo(String todo) {
			this.todo = todo;
		}
		public int getMyStudyNum() {
			return myStudyNum;
		}
		public void setMyStudyNum(int myStudyNum) {
			this.myStudyNum = myStudyNum;
		}
		
		
}
