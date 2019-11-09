package controller;

import java.io.IOException;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.mail.*;

import java.security.MessageDigest;
import java.util.Date;
import java.util.Iterator;
import java.util.List;


import javax.servlet.http.HttpSession;

import dao.Add_city_dao;
import dao.Add_country_dao;
import dao.Add_state_dao;
import dao.Image_Upload_dao;

import dao.LinkDao;
import dao.User_Reg_Dao;
import dao.User_mst_dao;

import vo.Add_city_vo;
import vo.Add_country_vo;
import vo.Add_state_vo;
import vo.Image_Upload_vo;

import vo.LinkVo;
import vo.User_Reg_Vo;
import vo.user_mst_vo;

/**
 * Servlet implementation class User_Reg_Controller
 */
@WebServlet("/User_Reg_Controller")
public class User_Reg_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Reg_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String S = request.getParameter("flag");
		//String mode = request.getParameter("mode");
		System.out.println(S);
		//System.out.println(mode);
		
		if(S.equals("search"))
		{
			search(request,response);
		}
		else if(S.equals("load"))
		{
			load(request,response);	
		}
		else if(S.equals("activestatus"))
		{
			setstatusactive(request,response);
		}
		else if(S.equals("deactivestatus"))
		{
			setstatusdeactive(request,response);
		}
		
		else if(S.equals("uproedit"))
		{
			Upro_edit(request, response);
		}
	}
	
	void setstatusactive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uid = request.getParameter("id");
		System.out.println("user id is = "+uid);
		
		user_mst_vo uvo = new user_mst_vo();
		uvo.setUser_id(Long.valueOf(uid));
		
		User_mst_dao umstdao = new User_mst_dao();
		
		List UserList = umstdao.status(uvo);
		Iterator itr =  UserList.iterator();
		
		user_mst_vo umstvo = (user_mst_vo)itr.next();
		
		String uname = umstvo.getUser_name();
		String upass = umstvo.getPasswd();
		String uemail = umstvo.getU_email();
		String utype = umstvo.getUser_type();
		Integer ustatus = (Integer)umstvo.getStatus();
	
		umstvo.setUser_id(Long.valueOf(uid));
		umstvo.setUser_name(uname);
		umstvo.setPasswd(upass);
		umstvo.setU_email(uemail);
		umstvo.setUser_type(utype);
		umstvo.setStatus(1);
		
		umstdao.update(umstvo);
		
		search(request,response);
	}
	
	void setstatusdeactive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uid = request.getParameter("id");
		System.out.println("user id is = "+uid);
		
		user_mst_vo uvo = new user_mst_vo();
		uvo.setUser_id(Long.valueOf(uid));
		
		User_mst_dao umstdao = new User_mst_dao();
		
		List UserList = umstdao.status(uvo);
		Iterator itr =  UserList.iterator();
		
		user_mst_vo umstvo = (user_mst_vo)itr.next();
		
		String uname = umstvo.getUser_name();
		String upass = umstvo.getPasswd();
		String uemail = umstvo.getU_email();
		String utype = umstvo.getUser_type();
		Integer ustatus = (Integer)umstvo.getStatus();
	
		umstvo.setUser_id(Long.valueOf(uid));
		umstvo.setUser_name(uname);
		umstvo.setPasswd(upass);
		umstvo.setU_email(uemail);
		umstvo.setUser_type(utype);
		umstvo.setStatus(0);
		
		umstdao.update(umstvo);
		
		search(request,response);
	}
	
	void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//User_Reg_Vo v1 = new User_Reg_Vo();
		
		User_Reg_Dao ureg = new User_Reg_Dao();
		List urg = ureg.search1();
		
		HttpSession s = request.getSession();
		s.setAttribute("Uregi", urg);
		
		response.sendRedirect("admin/manage_user.jsp");
	}

	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_country_dao cd = new Add_country_dao();
		Add_state_dao sd = new Add_state_dao();
		Add_city_dao cid = new Add_city_dao();
		
		
		List cnt = cd.load();
		List stt = sd.load();
		List cit = cid.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("cntry", cnt);
		s.setAttribute("state", stt);
		s.setAttribute("city", cit);
		
		response.sendRedirect("User/page_register_user.jsp");
	}
	
	void Upro_edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userid = request.getParameter("id");
		System.out.println("inside user profile " +userid);
		
		Add_country_dao countrydao = new Add_country_dao();
		Add_state_dao statedao = new Add_state_dao();
		Add_city_dao citydao = new Add_city_dao();
		
		List country_list = countrydao.load();
		List state_list = statedao.load();
		List city_list = citydao.load();
		
		user_mst_vo mstvo = new user_mst_vo();
		mstvo.setUser_id(Long.valueOf(userid));
		User_mst_dao usermstdao = new User_mst_dao();
		List usermst = usermstdao.userlist(mstvo);
		
		HttpSession session = request.getSession();
		session.setAttribute("con_list", country_list);
		session.setAttribute("st_list", state_list);
		session.setAttribute("ci_list", city_list);
		
		session.setAttribute("user_mst", usermst);
	
		User_Reg_Vo uservo = new User_Reg_Vo();
		//uservo.setUser_mst_id(mstvo);
		
		User_Reg_Dao userdao = new User_Reg_Dao();
		
		List userprofile = userdao.usersearch();
		session.setAttribute("usrprofile", userprofile);
		
		System.out.println("user profile done");
		response.sendRedirect("User/user_profile.jsp");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String S = request.getParameter("flag");
		//String mode = request.getParameter("mode");
		System.out.println(S);
		
		
		if(S!=null && S.equals("insert"))
		{
			insert(request, response);
		}
		
		else if(S.equals("update"))
		{
			update(request,response);
		}
		
		else if(S.equals("forgotPassword"))
		{
			forgotPassword(request, response);
		}
		
		else
		{
			response.sendRedirect(request.getContextPath()+"/User/page_register_user.jsp");
		}
	}
	
	void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String s1 = request.getParameter("u_name");
		String s2 = request.getParameter("u_email");
		String s3 = request.getParameter("u_number");
		String s4 = request.getParameter("u_address");
		String s5 = request.getParameter("u_username");
		String s6 = request.getParameter("u_pass");
		String s8 = request.getParameter("u_pincode");
		String s9 = request.getParameter("u_dob");
		String s10 = request.getParameter("country");
		String s11 = request.getParameter("state");
		String s12 = request.getParameter("city");
		String s13 = request.getParameter("u_gender");
		
		Boolean g=null;
		if(s13.equals("male"))
		{
			g=true;
		}
		else
		{
			g=false;
		}
		
		Add_country_vo country = new Add_country_vo();
		country.setCountry_id(Long.valueOf(s10));
		
		Add_state_vo state = new Add_state_vo();
		state.setState_id(Long.valueOf(s11));
		
		Add_city_vo city = new Add_city_vo();
		city.setCity_id(Long.valueOf(s12));
		
		
		user_mst_vo usrmst = new user_mst_vo();
		usrmst.setUser_name(s5);
		usrmst.setPasswd(s6);
		usrmst.setUser_type("user");
		
		User_Reg_Vo v1 = new User_Reg_Vo();
		v1.setU_name(s1);
		v1.setU_email(s2);
		v1.setU_number(s3);
		v1.setU_address(s4);
		v1.setU_pincode(s8);
		v1.setU_dob(s9);
		v1.setCountry(country);
		v1.setState(state);
		v1.setCity(city);
		v1.setUser_mst_id(usrmst);
		v1.setUser_gender(g);
		
		//Email Status
		usrmst.setStatus(0);
		usrmst.setU_email(s2);
		
		User_mst_dao usrdao = new User_mst_dao();
		usrdao.mst_insert(usrmst);
		
		User_Reg_Dao d1 = new User_Reg_Dao();
		d1.reg_insert(v1);

		//Check Email
		/*List checkMail=usrdao.checkEmail(usrmst);
		
		if(checkMail==null){
			User_Reg_Dao d1 = new User_Reg_Dao();
			usrdao.mst_insert(usrmst);
			d1.reg_insert(v1);	
			sendActivationLink(usrmst, request, response);
			response.sendRedirect("User/login.jsp");
			
		}
		else {
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("msg", "false");
			response.sendRedirect("User/page_register_user.jsp");
		}*/
		
		
		//usrmst.setUser_id(v1);
		
		Image_Upload_vo img_upld_vo = new Image_Upload_vo();
		img_upld_vo.setUser_mpg_id(usrmst);
		img_upld_vo.setUser_type("user");
		
		Image_Upload_dao img_upld_dao = new Image_Upload_dao();
		
		//getting file from Session
		
				HttpSession session =request.getSession();
				
				List myList=(List)session.getAttribute("fileList");
				
				 Iterator itr =  myList.iterator();
		         
		         System.out.println("Reading for session");
		         int i =0;
		         while (itr.hasNext()) {
		     
		        	 img_upld_vo.setImage_Name("Photo"+i);
		        	 img_upld_vo.setPath((String)itr.next());
		        	 
		        	 img_upld_dao.insert(img_upld_vo);
		        	 
		        	 i++;
					}

				session.removeAttribute("fileList");
				
				sendActivationLink(usrmst, request, response);
				response.sendRedirect(request.getContextPath()+"/User/login.jsp");
				
	}	
	
	void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uid = request.getParameter("id");
		System.out.println("user id issssss"+uid);
		
		String umstid = request.getParameter("uid");
		System.out.println("mst id isss"+umstid);
		
		String s1 = request.getParameter("u_name");
		String s2 = request.getParameter("u_email");
		String s3 = request.getParameter("u_number");
		String s4 = request.getParameter("u_address");
		String s5 = request.getParameter("u_username");
		String s6 = request.getParameter("u_pass");
		String s8 = request.getParameter("u_pincode");
		String s9 = request.getParameter("u_dob");
		String s10 = request.getParameter("country");
		String s11 = request.getParameter("state");
		String s12 = request.getParameter("city");
		String s13 = request.getParameter("u_gender");
		
		Boolean g=null;
		if(s13.equals("male"))
		{
			g=true;
		}
		else
		{
			g=false;
		}
		
		Add_country_vo country = new Add_country_vo();
		country.setCountry_id(Long.valueOf(s10));
		
		Add_state_vo state = new Add_state_vo();
		state.setState_id(Long.valueOf(s11));
		
		Add_city_vo city = new Add_city_vo();
		city.setCity_id(Long.valueOf(s12));
		
		user_mst_vo usrmst = new user_mst_vo();
		usrmst.setUser_name(s5);
		usrmst.setPasswd(s6);
		usrmst.setUser_type("user");
		usrmst.setUser_id(Long.valueOf(umstid));
		
		User_Reg_Vo v1 = new User_Reg_Vo();
		v1.setU_name(s1);
		v1.setU_email(s2);
		v1.setU_number(s3);
		v1.setU_address(s4);
		v1.setU_pincode(s8);
		v1.setU_dob(s9);
		v1.setCountry(country);
		v1.setState(state);
		v1.setCity(city);
		v1.setUser_gender(g);
		v1.setUser_mst_id(usrmst);
		v1.setU_id(Long.valueOf(uid));
		
		//Email Status
		usrmst.setStatus(1);
		usrmst.setU_email(s2);
		
		User_mst_dao usrdao = new User_mst_dao();
		usrdao.update(usrmst);
		
		User_Reg_Dao d1 = new User_Reg_Dao();
		d1.update(v1);
		
		/*Image_Upload_vo img_upld_vo = new Image_Upload_vo();
		img_upld_vo.setUser_mpg_id(usrmst);
		img_upld_vo.setUser_type("user");
		
		Image_Upload_dao img_upld_dao = new Image_Upload_dao();
		
		//getting file from Session
		
				HttpSession session =request.getSession();
				
				List myList=(List)session.getAttribute("fileList");
				
				 Iterator itr =  myList.iterator();
		         
		         System.out.println("Reading for session");
		         int i =0;
		         while (itr.hasNext()) {
		     
		        	 img_upld_vo.setImage_Name("Photo"+i);
		        	 img_upld_vo.setPath((String)itr.next());
		        	 
		        	 img_upld_dao.update(img_upld_vo);
		        	 
		        	 i++;
					}

				session.removeAttribute("fileList");*/
					
				response.sendRedirect(request.getContextPath()+"/User/user_index.jsp");
				
	}
	
	protected void sendActivationLink(user_mst_vo uservo,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String link = generateHashCode(uservo);
		Date dispatchDT = new Date();
		
		System.out.println(dispatchDT.toString());
		
		LinkVo linkvo = new LinkVo();
		
		linkvo.setLink(link);
		linkvo.setDispatchDT(dispatchDT.getTime());
		linkvo.setStatus(0);
		linkvo.setU_id(uservo);
		
		LinkDao linkdao = new LinkDao();
		linkdao.insert(linkvo);
		
		String activationLink = "http://localhost:8080/Technocraft_Debugger/Verification?authentication="+linkvo.getLink()+"&proc=activation";
		
		sendMail(uservo.getU_email(),activationLink,"Account Activation");	
		
	}
	
		protected String generateHashCode(user_mst_vo uservo)
		{
		
			String myKey=uservo.getUser_name()+uservo.getUser_id();
			
			byte[] unencodedPassword = myKey.getBytes();
			MessageDigest md = null;
			try 
			{
				md = MessageDigest.getInstance("MD5");
			} 
			catch (Exception e) {}
			
			md.reset();
			md.update(unencodedPassword);
			byte[] encodedPassword = md.digest();
			StringBuffer buf = new StringBuffer();
			for (int i = 0; i < encodedPassword.length; i++) {
			if (((int) encodedPassword[i] & 0xff) < 0x10) {
			buf.append("0");
			}
			buf.append(Long.toString((int) encodedPassword[i] & 0xff, 16));
			}
			String hashCode=buf.toString(); 
			
			return hashCode;		
	}
		
		protected void sendMail(String email,String activationLink,String msg)
		{
			
			java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	         properties.put("mail.smtp.starttls.enable", "true");
	         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	     
	 
	         try {
	            MimeMessage message = new MimeMessage(mailSession);
	   
	           
	            message.setContent("<h1>Below is your "+msg+" Code</h1>"
	            		+ "<a href='"+activationLink+"'> Click here to "+msg+" your account </a> "
	            		+ ""
	            		+ "","text/html" );
	            message.setSubject(msg);
	            
	            InternetAddress sender = new InternetAddress("technocraftdebugger@gmail.com", "Technocraft Debugger");
	             InternetAddress receiver = new InternetAddress(email);
	            message.setFrom(sender);
	            message.setRecipient(Message.RecipientType.TO, receiver);
	             message.saveChanges();
	            
	            javax.mail.Transport transport = mailSession.getTransport("smtp");
	            transport.connect("smtp.gmail.com", 587, "technocraftdebugger@gmail.com", "TechnoAdmin");
	             transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	                      
	        } catch (Exception e) {
	            System.out.println("err = " + e);
	         }	
		}
		
		
		protected void forgotPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			String email = request.getParameter("u_email");
			
			user_mst_vo uservo = new user_mst_vo();
			uservo.setU_email(email);
			
			User_mst_dao userdao = new User_mst_dao();
			List ls = userdao.checkEmail(uservo);
			
			Iterator itr = ls.iterator();
			
			user_mst_vo uservo1 = (user_mst_vo) itr.next();
			
			HttpSession session = request.getSession();
			
			if(!ls.isEmpty())
			{
				/*This function send the email containing the reset link*/
					sendResetLink(uservo1,request,response);
					session.setAttribute("msg", "Kindly Check your mail box for Reset Link");
					response.sendRedirect(request.getContextPath()+"/User/login.jsp");
			}
			else
			{		
					session.setAttribute("error", "Email ID is not registered with the System");
					response.sendRedirect(request.getContextPath()+"/User/forgotPassword.jsp");
			}

		}

		protected void sendResetLink(user_mst_vo uservo,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String link = generateHashCode(uservo);
			Date dispatchDT = new Date();
			
			
			System.out.println(dispatchDT.toString());
			/*Setting the parameter for link table from confirming the user's identity*/
			
			LinkVo linkvo = new LinkVo();
			linkvo.setLink(link);
			linkvo.setDispatchDT(dispatchDT.getTime());
			linkvo.setStatus(0);
			linkvo.setU_id(uservo);
			
			
			LinkDao linkDAO = new LinkDao();
			linkDAO.insert(linkvo);
			
			String activationLink = "http://localhost:8080/Technocraft_Debugger/Verification?authentication="+linkvo.getLink()+"&proc=forgotPassword"; 
			
			resetPassword(uservo.getU_email(),activationLink,"Reset Link", uservo.getPasswd());
		}
		
		protected void resetPassword(String email,String activationLink,String msg, String passwd )
		{
			
			java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	         properties.put("mail.smtp.starttls.enable", "true");
	         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	     
	 
	         try {
	            MimeMessage message = new MimeMessage(mailSession);
	   
	           
	            message.setContent("<h1>Below is your "+msg+" Code</h1>"
	            		+ "<a href='"+activationLink+"'> Click here to "+msg+" your account </a> "
	            		+ "Your password is : " +passwd
	            		+ "","text/html" );
	            message.setSubject(msg);
	            
	            InternetAddress sender = new InternetAddress("technocraftdebugger@gmail.com", "Technocraft Debugger");
	             InternetAddress receiver = new InternetAddress(email);
	            message.setFrom(sender);
	            message.setRecipient(Message.RecipientType.TO, receiver);
	             message.saveChanges();
	            
	            javax.mail.Transport transport = mailSession.getTransport("smtp");
	            transport.connect("smtp.gmail.com", 587, "technocraftdebugger@gmail.com", "TechnoAdmin");
	             transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	                      
	        } catch (Exception e) {
	            System.out.println("err = " + e);
	         }	
		}
}


