package com.spring;

public class CartModel {
        public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCfd() {
		return cfd;
	}
	public void setCfd(String cfd) {
		this.cfd = cfd;
	}
	public String getCdb() {
		return cdb;
	}
	public void setCdb(String cdb) {
		this.cdb = cdb;
	}
		private int id;
        private int UserId;
        private int cid;
        private String cfd;
        private String cdb;
        
}
