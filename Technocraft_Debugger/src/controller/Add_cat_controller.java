package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;

import dao.Add_cat_dao;
import vo.Add_cat_vo;

/**
 * Servlet implementation class add_cat_controller
 */
@WebServlet("/Add_cat_controller")
public class Add_cat_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_cat_controller() {
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
	
		if(S.equals("load"))
		{
			load(request,response);
		}
		else if(S.equals("search"))
		{
			search(request,response);
		}
		else if(S.equals("edit"))
		{
			edit(request,response);
		}
		else if(S.equals("delete"))
		{
			delete(request, response);
		}
	}
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao c = new Add_cat_dao();
		List ls = c.load(catvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/add_sub_cat.jsp");
	}
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_dao c = new Add_cat_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_cat.jsp");
	}
	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_cat_vo v = new Add_cat_vo();
		v.setCat_id(Long.valueOf(S1));
		
		Add_cat_dao c = new Add_cat_dao();
		List ls = c.edit(v);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_cat.jsp");
	}
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_cat_vo v1 = new Add_cat_vo();
			v1.setCat_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_cat_dao d1 = new Add_cat_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "false");
			}
			
			search(request, response);
			//response.sendRedirect("admin/manage_cat.jsp");
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
		if(p1!=null && p1.equals("insert"))
		{
			insert(request,response);
		}
		
		else if(p1.equals("update"))
		{
			update(request, response);
		}
	}
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("cat_name");
		String s2 = request.getParameter("cat_desc");
		
		Add_cat_vo v1 = new Add_cat_vo();
		v1.setCat_name(s1);
		v1.setCat_desc(s2);
		
		
		Add_cat_dao c2 =  new Add_cat_dao();
		c2.insert(v1);
		
		response.sendRedirect("admin/add_category.jsp");
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("cat_name");
		String s2 = request.getParameter("cat_desc");
		String s3 = request.getParameter("id");
				
		Add_cat_vo v1 = new Add_cat_vo();
		v1.setCat_name(s1);
		v1.setCat_desc(s2);
		v1.setCat_id(Long.valueOf(s3));
		
		Add_cat_dao c2 =  new Add_cat_dao();
		c2.update(v1);
		
		search(request, response);
		//response.sendRedirect("admin/manage_cat.jsp");
	}
}
