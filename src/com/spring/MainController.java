package com.spring;

import java.io.File;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.spring.UserModel;

@Controller
public class MainController {
	
   
    @Autowired
    MainDao dao;
    private JavaMailSender mailSender;
    public MainDao getDao() {
		return dao;
	}

	public void setDao(MainDao dao) {
		this.dao = dao;
	}

	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	@RequestMapping("/signin")
    public String getSignInForm() {
        return "login";
    }

    @RequestMapping("/signup")
    public String getSignUpForm() {
        return "register";
    }
    @RequestMapping("/Enterotp")
    public String getEnterOTPPage() {
    	return "EnterOTP";
    }
    @RequestMapping("/forgetpass")
    public String getEnterEmailPage(){
    	return"EnterEmail";
    }
    @RequestMapping("/gaming-console-page")
    public String getgamingconsolepage(){
    	return"gaming-console";
    }
    @RequestMapping("/television-page")
    public String gettelevisionpage(){
    	return "television";
    }
    
    @RequestMapping("/feedback-form-page")
    public String getfeedbackformpage(){
    	return"feedback-form";
    }
   
    //Send UserId to Profile Page
  //Send UserId to Cart Page
    @RequestMapping("/profilepage")
    public String ProfilePage(@RequestParam("userid") String userid,HttpSession session){
    	UserModel list= dao.GetData(userid);
    	session.setAttribute("userdata",list);
    	return"ProfilePage";
    }
    //Send UserId to Cart Page
    @RequestMapping("/cart")
    public String CartPage(@RequestParam("userid") String userid,HttpSession session){
  
    	session.setAttribute("Userid1", userid);
    	return "CartPage";
    }
    //Dynamically added product in cart page 
    //cid =product id
    //cfd = iamge folder
    //cdb = Database Table Name
    //cpg = Page Name
    @RequestMapping("/Cart-Page")
    public String CartPage1(@RequestParam("cid") String cid,
                            @RequestParam("cfd") String cfd,
                            @RequestParam("cdb") String cdb,
                            @RequestParam("cpg") String pg,
                            @RequestParam("userid") String userid,
                            Model model) {
    	 String message = "Item added to cart successfully!";
    	 int status=dao.insertCart(userid,cid,cfd,cdb);
    	 if(status>0)
 		{
        return "redirect:/"+pg+"?fd=" + cfd + "&db=" + cdb+ "&msg=" + message+"&userid="+userid;
 		}
    	 else{
    		  message = "Item Can Not be added to cart successfully!";
    		 return "redirect:/"+pg+"?fd=" + cfd + "&db=" + cdb+ "&msg=" + message+"&userid="+userid;
    	 }
    }
    @RequestMapping("/Cart-Page1")
    public String CartPage2(@RequestParam("cid") String cid,
                            @RequestParam("cfd") String cfd,
                            @RequestParam("cdb") String cdb,
                            @RequestParam("cpg") String pg,
                            @RequestParam("userid") String userid,
                            Model model) {
    	 String message = "Item added to cart successfully!";
    	 int status=dao.insertCart(userid,cid,cfd,cdb);
    	 if(status>0)
 		{
        return "redirect:/"+pg+"?fd=" + cfd + "&db=" + cdb+ "&msg=" + message+"&userid="+userid+"&id="+cid;
 		}
    	 else{
    		  message = "Item Can Not be added to cart successfully!";
    		  return "redirect:/"+pg+"?fd=" + cfd + "&db=" + cdb+ "&msg=" + message+"&userid="+userid+"&id="+cid;
    	 }
    }
    //send data to Product Page
     //fd=folder
    //db=database table name
    @RequestMapping("/Product-page")
    public String ProductPage(@RequestParam("id") String id,
                              @RequestParam("fd") String fd,
                              @RequestParam("db") String db,
                              @RequestParam("userid") String userid,
                              Model model) {
        model.addAttribute("gameId", id);
        model.addAttribute("folder", fd);
        model.addAttribute("table", db);
        model.addAttribute("UserID",userid);
        return "ProductPage";
    }
    //Game Accessories Section
    //get data from the accessories Table
    @RequestMapping("/gameaccessories")
    public String gameaccessoriesProductPage(@RequestParam("db") String db,@RequestParam("fd") String fd,@RequestParam("userid") String userId, Model model) {
        // Pass the ID to the model to make it accessible in the view
        model.addAttribute("accessoriesdb", db);
        model.addAttribute("accessoriesfd",fd);
        model.addAttribute("Page","gameaccessories");
        model.addAttribute("UserID",userId);
        return "Game"; // Return the view name
    }
    @RequestMapping("/gameaccessorieswithoutuser")
    public String gameaccessoriesProductPage1(@RequestParam("db") String db,@RequestParam("fd") String fd, Model model) {
        // Pass the ID to the model to make it accessible in the view
        model.addAttribute("accessoriesdb", db);
        model.addAttribute("accessoriesfd",fd);
        model.addAttribute("Page","gameaccessories");

        return "Game"; // Return the view name
    }
  //Game  Section
    //get data from the Gamedata Table
    @RequestMapping("/gamepage")
    public String getGamePage(@RequestParam("db") String db,@RequestParam("fd") String fd,@RequestParam("userid") String userId, Model model){
    	 model.addAttribute("accessoriesdb", db);
         model.addAttribute("accessoriesfd",fd);
         model.addAttribute("Page","gamepage");
         model.addAttribute("UserID",userId);
         return "Game"; // Return the view name
    }
    @RequestMapping("/gamepagewithoutuser")
    public String getGamePage1(@RequestParam("db") String db,@RequestParam("fd") String fd, Model model){
    	 model.addAttribute("accessoriesdb", db);
         model.addAttribute("accessoriesfd",fd);
         model.addAttribute("Page","gamepage");
   
         return "Game"; // Return the view name
    }
   //cart Page to Home Page
    @RequestMapping("/HomePage")
    public String getBackToHome(@ModelAttribute("userid") String userid1, HttpSession session) {
        session.setAttribute("userid1", userid1);
        return "Home";
    }
    //Navbar.jsp
    @RequestMapping("/HomePageNav")
    public String getBackToHomeuseNav(@ModelAttribute("userid") String userid2, HttpSession session) {
        session.setAttribute("userid2", userid2);
        return "Home";
    }
    //upload website data like gameImage, gameasccessories etc... 
    @RequestMapping("/uploadpage")
    public String getUpload()
    {
    	return "DetailUpload";
    }
    @RequestMapping(value = "/ImageUploadServer2", method = RequestMethod.POST)
    public String getUpload(@RequestParam("file") MultipartFile file, 
                            @RequestParam("name") String name, 
                            @RequestParam("price") String price, 
                            HttpSession session, 
                            HttpServletRequest request, 
                            HttpServletResponse response) {
        String uploadDir = "C:\\Users\\HP\\workspace\\GameWebsite\\WebContent\\assets\\accessories"; 
        String fileName = "";

        // Ensure directory exists
        File directory = new File(uploadDir);
        if (!directory.exists()) {
            directory.mkdirs();
        }

        try {
            // Validate file input
            if (file.isEmpty()) {
                session.setAttribute("message", "File upload failed: No file selected.");
                return "redirect:DetailUpload.jsp";
            }

            // Extract file name and save to server
            fileName = file.getOriginalFilename();
            File destinationFile = new File(uploadDir + File.separator + fileName);
            file.transferTo(destinationFile);

            // Database insertion
            Class.forName("com.mysql.jdbc.Driver"); // Updated JDBC driver class
            try (Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/gamewebsite", "root", "");
                 PreparedStatement pst = (PreparedStatement) con.prepareStatement("INSERT INTO accessories (name, price, file) VALUES (?, ?, ?)")) {
                
                pst.setString(1, name);
                pst.setString(2, price);
                pst.setString(3, fileName);

                int rowsAffected = pst.executeUpdate();
                if (rowsAffected > 0) {
                    session.setAttribute("message", "Image uploaded successfully!");
                    return "DetailUpload";
                } else {
                    session.setAttribute("message", "Database insertion failed.");
                    return "DetailUpload";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("message", "An error occurred: " + e.getMessage());
            return "redirect:DetailUpload.jsp";
        }
    }

    //check OTP
	@RequestMapping(value="/CheckOTP",method=RequestMethod.POST)
	public String getOTP(@RequestParam("otp") String otp,HttpSession session){
		String OTP=(String) session.getAttribute("sesotp");
		String Email=(String) session.getAttribute("sesemail");
		if(otp.equals(OTP))
		{
		     session.setAttribute("sesreg", "success");
			return "login";
		}
		return "EnterOTP";
		
	}
    //password otp 
	@RequestMapping(value="/CheckOTP1",method=RequestMethod.POST)
	public String getOTP1(@RequestParam("otp") String otp,HttpSession session){
		String OTP=(String) session.getAttribute("sesotp");
		String Email=(String) session.getAttribute("sesemail");
		if(otp.equals(OTP))
		{
		     session.setAttribute("sesreg", "success");
			return "Password";
		}
		return "EnterOTP2";
		
	}
 
     //Sign up Form 
    @RequestMapping(value = "/SignUpForm", method = RequestMethod.POST)
    public String submitForm1(@ModelAttribute UserModel um, HttpSession session) {
        String otp = dao.getotp(); // Generate OTP
        um.setOTP(otp);
		session.setAttribute("sesotp", otp);
		session.setAttribute("sesemail", um.getEmail());
		int status=dao.saveUser(um);
		if(status>0)
		{
			session.setAttribute("otp", "success");
			dao.sendMailToEmail(um.getEmail(),otp);
			return "EnterOTP";
		}else{
			session.setAttribute("sesereg", "failed");
			return "register";
		}
    }
  //Sign In Form
     @RequestMapping(value = "/submitForm", method = RequestMethod.POST, produces = "application/json")
    public String submitForm(@ModelAttribute UserModel lm, HttpSession session) {
        int status = dao.checkEmail(lm);
        int id=dao.getUserId(lm.getEmail());
        String userid=String.valueOf(id);
        if (status > 0) {
            List<UserModel> list = dao.doLoginForm(lm);
            if (list != null) {
            	session.setAttribute("seslog", "success");
            	session.setAttribute("userid", userid);
            	session.setAttribute("userid1", userid);
            	return "Home";
                
            } else {
            	session.setAttribute("seslog1", "failed");
            	return "login";
               
            }
        } else {
        	  session.setAttribute("sesreg1", "failed");
        	  return "login";
            
        }
    }
     //EnterEmail Page
     @RequestMapping(value="/SubmitEmail",method=RequestMethod.POST)
		public String getEmailot(@ModelAttribute("um") UserModel um,HttpSession session)
		{
			String otp=dao.getotp();
			session.setAttribute("sesotp", otp);
			session.setAttribute("sesemail", um.getEmail());
			int status=dao.sendMailtoEmail(um.getEmail(),otp);
			if(status>0)
			{
				session.setAttribute("otp", "success");
				session.setAttribute("email", um.getEmail());
				return "EnterOTP2";
			}else{
				session.setAttribute("otp", "failed");
				return "EnterEmail";
			}
		}

     @RequestMapping(value="/submitPassword", method=RequestMethod.POST)
     public String PasswordPage(@RequestParam("Usermail") String Usermail, HttpServletRequest request,HttpSession session) {
         String pass = (String) request.getParameter("password");
         int status = dao.updatePass(Usermail, pass);
         if (status > 0) {
        	 session.setAttribute("sespass", "success");
             return "redirect:signin";
         } else {
             return "redirect:error";  // Redirect to an error page if update fails
         }
     }




}
