package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Add_country_dao;
import dao.Add_questions_dao;
import dao.Add_state_dao;

import vo.Add_country_vo;
import vo.Add_state_vo;

/**
 * Servlet implementation class Add_state_controller
 */
@WebServlet("/Add_state_controller")
public class Add_state_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_state_controller() {
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
			search(request, response);
		}
		
		else if(S.equals("edit"))
		{
			edit(request, response);
		}
		else if(S.equals("delete"))
		{
			delete(request,response);
		}
	}
	
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		List ls = c.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/add_state.jsp");
	}

	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_state.jsp");
	}
	
	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		HttpSession s = request.getSession();
		Add_country_dao d1 = new Add_country_dao();
		List ls1 = d1.load();
		s.setAttribute("list1", ls1);
		
		Add_state_vo v = new Add_state_vo();
		v.setState_id(Long.valueOf(S1));
		
		Add_state_dao d = new Add_state_dao();
		List ls = d.edit(v);
		
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_state.jsp");
	}
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_state_vo v1 = new Add_state_vo();
			v1.setState_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_state_dao d1 = new Add_state_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_state.jsp");
		}
		
		catch(Exception e)
		{
			//TODO: handle exception
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
		String s1 = request.getParameter("state_name");
		String s2 = request.getParameter("state_desc");
		String s3 = request.getParameter("country");
		
		System.out.println("id = " + s3);
		
		Add_country_vo v = new Add_country_vo();
		v.setCountry_id(Long.valueOf(s3));
		
		Add_state_vo st1 = new Add_state_vo();
		st1.setState_name(s1);
		st1.setState_desc(s2);
		st1.setS(v);
		
		Add_state_dao st2 = new Add_state_dao();
		st2.insert(st1);
		
		response.sendRedirect("admin/add_state.jsp");	
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("state_name");
		String s2 = request.getParameter("state_desc");
		String s3 = request.getParameter("country");
		
		String s4 = request.getParameter("id");
		
		System.out.println("id = " + s3);
		
		Add_country_vo v = new Add_country_vo();
		v.setCountry_id(Long.valueOf(s3));
		
		Add_state_vo st1 = new Add_state_vo();
		st1.setState_name(s1);
		st1.setState_desc(s2);
		st1.setS(v);
		
		st1.setState_id(Long.valueOf(s4));
		
		Add_state_dao st2 = new Add_state_dao();
		st2.update(st1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_state.jsp");	
	}
}