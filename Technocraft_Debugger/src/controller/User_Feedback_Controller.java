package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import vo.Add_feedback_vo;
import vo.User_Feedback_Vo;
import dao.Add_feedback_dao;
import dao.User_Feedback_Dao;

/**
 * Servlet implementation class User_Feedback_Controller
 */
@WebServlet("/User_Feedback_Controller")
public class User_Feedback_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Feedback_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String S = request.getParameter("flag");
		System.out.println(S);
		
		if(S.equals("search"))
		{
			search(request,response);
		}
		
		else if(S.equals("delete"))
		{
			delete(request, response);
		}
	}
	
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User_Feedback_Dao c = new User_Feedback_Dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_feedback.jsp");
	}

	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			User_Feedback_Vo v1 = new User_Feedback_Vo();
			v1.setFb_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			User_Feedback_Dao d1 = new User_Feedback_Dao();
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Record First !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_feedback.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String S = request.getParameter("flag");
		System.out.println(S);
		
		if(S!=null && S.equals("insert"))
		{
			insert(request, response);
		}
	}
	
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("fb_username");
		String s2 = request.getParameter("fb_email");
		String s3 = request.getParameter("fb_message");
		
		User_Feedback_Vo v1 = new User_Feedback_Vo();
		v1.setFb_username(s1);
		v1.setFb_email(s2);
		v1.setFb_message(s3);
		
		User_Feedback_Dao d = new User_Feedback_Dao();
		d.insert(v1);
		
		response.sendRedirect("User/Feedback.jsp");
	}

}
