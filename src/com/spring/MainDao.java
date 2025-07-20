package com.spring;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;



public class MainDao {
	JdbcTemplate template;
	MailSender mailSender;
	public MailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int checkEmail(UserModel lm) {
		// TODO Auto-generated method stub
		String Sql = "select count(*) from userdata where email = '"+lm.getEmail()+"'";	    
	    return template.queryForObject(Sql, new Object[]{}, Integer.class);
	}

	public List<UserModel> doLoginForm(UserModel lm) {
		// TODO Auto-generated method stub
		String sql="select * from userdata where email='"+lm.getEmail()+"' and password='"+lm.getPassword()+"' ";    	
    	List<UserModel> userlist =template.query(sql, new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				UserModel um=new UserModel();
				um.setEmail(rs.getString("email"));
				um.setPassword(rs.getString("password"));
				um.setId(rs.getInt("id"));
				return um;
				
			}
			
		});
		List<UserModel> list=userlist.size()>0?userlist:null;
		return list;
	}

	public int saveUser(UserModel um) {
		// TODO Auto-generated method stub
		String Sql = "select count(*) from userdata where email = '"+um.getEmail()+"'";
		int i = template.queryForObject(Sql, new Object[]{}, Integer.class);
	    
	    if (i > 0) {
	        return -1;
	    } else{
	    	String sql="insert into userdata(name,email,password,OTP)values('"+um.getName()+"','"+um.getEmail()+"','"+um.getPassword()+"','"+um.getOTP()+"')";
	    	return template.update(sql);
	    }
	}
	public String getotp() {
		// TODO Auto-generated method stub

	    Random random = new Random();
	    int OTP = 100000 + random.nextInt(900000);
	    String otp = String.valueOf(OTP);
	    return otp;

	    
	}

	public void sendMailToEmail(String email, String otp) {
		// TODO Auto-generated method stub
		SimpleMailMessage message=new SimpleMailMessage();
		message.setTo(email);
		message.setFrom("bhushannagpure25@gmail.com");
		message.setSubject("OTP Verification");
		message.setText(otp);
		mailSender.send(message);
		
	}
	public int sendMailtoEmail(String email, String otp) {
		// TODO Auto-generated method stub
		String sql="update userdata set OTP='"+otp+"' where email='"+email+"'";
		SimpleMailMessage message=new SimpleMailMessage();
		message.setTo(email);
		message.setFrom("bhushannagpure25@gmail.com");
		message.setSubject("OTP Verification");
		message.setText(otp);
		mailSender.send(message);
		return template.update(sql);
		
	}

	public int getUserId(String email) {
		// TODO Auto-generated method stub
		String sql = "select id from userdata where email = '"+email+"'";
        try {
            // Query for the ID using JdbcTemplate
            return template.queryForObject(sql, new Object[]{}, Integer.class);
        } catch (Exception e) {
            // Log the exception if necessary
            e.printStackTrace();
            return 0; // Return 0 if no record is found or an error occurs
        }
	}

	public int insertCart(String userid, String cid, String cfd, String cdb) {
		// TODO Auto-generated method stub
		String sql="insert into cart(UserId	,cid,cfd,cdb)values('"+userid+"','"+cid+"','"+cfd+"','"+cdb+"')";
    	return template.update(sql);
	}

	public UserModel GetData(String userid) {
	    String sql = "select * from userdata where id = '"+userid+"'";
	    try {
	        return template.queryForObject(sql, new Object[]{}, new RowMapper<UserModel>() {
	            @Override
	            public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	                UserModel um = new UserModel();
	                um.setEmail(rs.getString("email"));
	                um.setName(rs.getString("name"));
	                um.setId(rs.getInt("id"));
	                return um;
	            }
	        });
	    } catch (Exception e) {
	        // Handle the case where no record is found
	        return null;
	    }
	}

	public int updatePass(String usermail, String pass) {
		// TODO Auto-generated method stub
		String sql="update userdata set password='"+pass+"' where email='"+usermail+"'";
		return template.update(sql);
	}

	public List<CartModel> getAllCartDetail(String userid) {
	    String sql = "SELECT * FROM cart WHERE UserId = ?";
	    List<CartModel> cartList = template.query(sql, new Object[]{userid}, new RowMapper<CartModel>() {
	        @Override
	        public CartModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	            CartModel cm = new CartModel();
	            cm.setId(rs.getInt("id"));
	            cm.setUserId(rs.getInt("UserId"));
	            cm.setCid(rs.getInt("cid"));
	            cm.setCfd(rs.getString("cfd"));
	            cm.setCdb(rs.getString("cdb"));
	            return cm;
	        }
	    });
	    return cartList.isEmpty() ? null : cartList;
	}

	public List<DataModel> getCartData(List<CartModel> cartList) {
	    List<DataModel> dataModels = new ArrayList<>();

	    for (CartModel cart : cartList) {
	        String sql = "SELECT * FROM " + cart.getCdb() + " WHERE id = ?";
	        List<DataModel> result = template.query(sql, new Object[]{cart.getId()}, new RowMapper<DataModel>() {
	            @Override
	            public DataModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	                DataModel dm = new DataModel();
	                dm.setId(rs.getInt("id"));
	                dm.setName(rs.getString("name"));
	                dm.setPrice(rs.getString("price"));
	                dm.setFile(rs.getString("file"));
	                dm.setCfd(cart.getCfd());
	                return dm;
	            }
	        });
	        dataModels.addAll(result); // Add the retrieved data to the main list
	    }

	    return dataModels.isEmpty() ? null : dataModels;
	}


	 




	
	
}
