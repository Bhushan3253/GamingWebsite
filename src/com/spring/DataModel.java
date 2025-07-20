package com.spring;

public class DataModel {
        public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
		private int id;
        private String name;
        private String price;
        private String file;
        private String cfd;
		public String getCfd() {
			return cfd;
		}
		public void setCfd(String cfd) {
			this.cfd = cfd;
		}
        
}
