package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.Add_qualification_dao;
import vo.Add_qualification_vo;
import vo.user_mst_vo;

import java.util.*;

/**
 * Servlet implementation class Add_qualification_controller
 */
@WebServlet("/Add_qualification_controller")
public class Add_qualification_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_qualification_controller() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String S = request.getParameter("flag");
		String S1 = request.getParameter("user");
		System.out.println(S);
		
		if(S.equals("search")&&S1.equals("Admin"))
		{
			search(request, response);
		}
		else if(S.equals("search")&&S1.equals("company"))
		{
			searchc(request, response);
		}
		else if(S.equals("edit")&&S1.equals("Admin"))
		{
			edit(request, response);
		}
		else if(S.equals("edit")&&S1.equals("company"))
		{
			editc(request, response);
		}
		else if(S.equals("delete")&&S1.equals("Admin"))
		{
			delete(request, response);
		}
		else if(S.equals("delete")&&S1.equals("company"))
		{
			deletec(request, response);
		}
	}
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_qualification_dao c = new Add_qualification_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_qualification.jsp");
	}
	void searchc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_qualification_dao c = new Add_qualification_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("Company/manage_qualification.jsp");
	}
	
	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_qualification_vo v = new Add_qualification_vo();
		v.setQualification_id(Long.valueOf(S1));
		
		Add_qualification_dao d = new Add_qualification_dao();
		List ls = d.edit(v);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_qualification.jsp");
	}
	
	void editc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_qualification_vo v = new Add_qualification_vo();
		v.setQualification_id(Long.valueOf(S1));
		
		Add_qualification_dao d = new Add_qualification_dao();
		List ls = d.edit(v);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("Company/edit_qualification.jsp");
	}
	
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_qualification_vo v1 = new Add_qualification_vo();
			v1.setQualification_id(Long.valueOf(del));
		
			HttpSession session = request.getSession();
			Add_qualification_dao d1 = new Add_qualification_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_qualification.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	void deletec (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_qualification_vo v1 = new Add_qualification_vo();
			v1.setQualification_id(Long.valueOf(del));
		
			HttpSession session = request.getSession();
			Add_qualification_dao d1 = new Add_qualification_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			searchc(request,response);
			//response.sendRedirect("admin/manage_qualification.jsp");
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
		
		String p1 = request.getParameter("flag");
		String U = request.getParameter("user");
		
		if((p1!=null && p1.equals("insert"))&&U.equals("Admin"))
		{
			try {
				insert(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if((p1!=null && p1.equals("insert"))&&U.equals("company"))
		{
			try {
				insertc(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(p1.equals("update")&&U.equals("Admin"))
		{
			try {
				update(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(p1.equals("update")&&U.equals("company"))
		{
			try {
				updatec(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);

		String s1 = request.getParameter("qualification_name");
		String s2 = request.getParameter("qualification_desc");
		
		Add_qualification_vo q1 = new Add_qualification_vo();
		
		q1.setQualification_name(s1);
		q1.setQualification_desc(s2);
		q1.setUsrid(u1);
		
		Add_qualification_dao q2 = new Add_qualification_dao();
		q2.insert(q1);
		
		response.sendRedirect("admin/add_qualification.jsp");
	}
	
	void insertc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);

		String s1 = request.getParameter("qualification_name");
		String s2 = request.getParameter("qualification_desc");
		
		Add_qualification_vo q1 = new Add_qualification_vo();
		
		q1.setQualification_name(s1);
		q1.setQualification_desc(s2);
		q1.setUsrid(u1);
		
		Add_qualification_dao q2 = new Add_qualification_dao();
		q2.insert(q1);
		
		response.sendRedirect("Company/add_qualification.jsp");
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("qualification_name");
		String s2 = request.getParameter("qualification_desc");
		String s3 = request.getParameter("id");
		
		Add_qualification_vo q1 = new Add_qualification_vo();
		
		q1.setQualification_name(s1);
		q1.setQualification_desc(s2);
		q1.setQualification_id(Long.valueOf(s3));
		
		Add_qualification_dao q2 = new Add_qualification_dao();
		q2.update(q1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_qualification.jsp");
	}
	
	void updatec (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("qualification_name");
		String s2 = request.getParameter("qualification_desc");
		String s3 = request.getParameter("id");
		
		Add_qualification_vo q1 = new Add_qualification_vo();
		
		q1.setQualification_name(s1);
		q1.setQualification_desc(s2);
		q1.setQualification_id(Long.valueOf(s3));
		
		Add_qualification_dao q2 = new Add_qualification_dao();
		q2.update(q1);
		
		searchc(request,response);
		//response.sendRedirect("admin/manage_qualification.jsp");
	}

}

	