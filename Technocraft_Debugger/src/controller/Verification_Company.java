package controller;

import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.LinkVo;
import vo.user_mst_vo;
import dao.LinkDao;
import dao.User_mst_dao;

/**
 * Servlet implementation class Verification_Company
 */
@WebServlet("/Verification_Company")
public class Verification_Company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Verification_Company() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag="activation";
		
		if(request.getParameter("proc")!=null)
			   flag = request.getParameter("proc");
			else
				flag="activation";
			
			
			if(flag.equals("activation"))
			{
				activation(request, response);
			}
			else if(flag.equals("forgotPassword")) 
			{
				forgotPassword(request, response);
			}
			else{
				response.sendRedirect(request.getContextPath()+"/Company/login.jsp");
			}
	}
	
	protected void activation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String link = request.getParameter("authentication");
		List entry = null;
		
		HttpSession session = request.getSession();
		
		boolean test = true;
		
		user_mst_vo uservo = null;
		User_mst_dao userdao = new User_mst_dao();
		LinkVo linkvo = new LinkVo();
		
		linkvo.setLink(link);
		
		LinkDao linkdao = new LinkDao();
		entry = linkdao.getElementByLink(linkvo);
		
		if(entry != null ){
			
			Iterator it = entry.iterator();
			while(it.hasNext()){
				linkvo = (LinkVo) it.next();
				
				boolean flag1 = true;
				long temp =new Date().getTime();
				
				System.out.println("time arrv "+temp);
				System.out.println("time dispatch "+linkvo.getDispatchDT());
				
				if( new Date().getTime()-linkvo.getDispatchDT()  <= 1000*60*60 ){
				//if(flag1 == true){
					
				
									if(linkvo.getStatus()==0){
									
										linkvo.setActivationDT(new Date().getTime());
										linkvo.setStatus(1);
										
										linkdao.update(linkvo);
										
										uservo = linkvo.getU_id();
										uservo.setStatus(1);
										
										userdao.update(uservo);
										
										session.setAttribute("msg", "Account Activated");
										
									}else{
										
										session.setAttribute("msg", "Account Already Activated");
									}
									
						}else{
							
							session.setAttribute("msg", "Activation Link has Expired");
							
						}
				
				
				}
	
		}else{
			session.setAttribute("msg", "Invalid Activation Code");
		}
	
		response.sendRedirect(request.getContextPath()+"/Company/login.jsp");
		
	}
	
	protected void forgotPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String link = request.getParameter("authentication");
		List entry=null;
		HttpSession session = request.getSession();
		boolean test = true;
		user_mst_vo uservo = null;
		User_mst_dao userdao = new User_mst_dao();
		LinkVo linkvo = new LinkVo();
		boolean success=false;
			
		
		linkvo.setLink(link);
		
		LinkDao linkdao = new LinkDao();
		entry = linkdao.getElementByLink(linkvo);
		
		if(!entry.isEmpty() ){
			
			Iterator it = entry.iterator();
			while(it.hasNext()){
				linkvo = (LinkVo) it.next();
				
				boolean flag1 = true;
				long temp =new Date().getTime();
				
				System.out.println("time arrv "+temp);
				System.out.println("time dispatch "+linkvo.getDispatchDT());
				
				if( new Date().getTime()-linkvo.getDispatchDT()  <= 1000*60*60 ){
		
					
				
									if(linkvo.getStatus()==0){
									
										linkvo.setActivationDT(new Date().getTime());
										linkvo.setStatus(1);
										
										linkdao.update(linkvo);
										
										long u_id= linkvo.getU_id().getUser_id();
										
										user_mst_vo uservo1 = new user_mst_vo();
										uservo1.setUser_id(u_id);
										
										List ls = userdao.getElementByID(uservo1);


										session.setAttribute("msg", "Enter your password");
										session.setAttribute("obj",ls);
										
										success=true;
										
										
									}else{
										
										session.setAttribute("msg", "Reset Link Already Used");
										
									}
									
						}else{
							
							session.setAttribute("msg", "Reset Link has Expired");
							
							
						}			
				}
	
		}else{
			
			session.setAttribute("msg", "Invalid Password Reset Link ");
			
		}
	
		if(success==true){
		response.sendRedirect(request.getContextPath()+"/Company/login.jsp");
		}else{
		response.sendRedirect(request.getContextPath()+"/Company/login.jsp");
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		user_mst_vo uservo = new user_mst_vo();
		User_mst_dao userdao = new User_mst_dao();
		
		uservo.setUser_name(username);
		uservo.setPasswd(password);
		
		List ls = userdao.getElementByUserNameAndPassword(uservo);
		
		if(!ls.isEmpty()){
			HttpSession session = request.getSession();
			session.setAttribute("list", ls);
			response.sendRedirect(request.getContextPath()+"/Company_Menu");
			}
			else{
				response.sendRedirect(request.getContextPath()+"/Company/login.jsp");
			}
	}

}
