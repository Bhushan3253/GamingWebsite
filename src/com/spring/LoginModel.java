package com.spring;

public class LoginModel {
		private String email;
		private String password;
	    private String OTP;
		public String getOTP() {
			return OTP;
		}
		public void setOTP(String oTP) {
			OTP = oTP;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
}
