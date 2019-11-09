package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.Add_city_vo;
import vo.Add_country_vo;
import vo.Add_state_vo;

import dao.Add_city_dao;
import dao.Add_country_dao;
import dao.Add_state_dao;

/**
 * Servlet implementation class add_city
 */
@WebServlet("/Add_city_controller")
public class Add_city_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_city_controller() {
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
			edit(request, response);
		}
		else if(S.endsWith("delete"))
		{
			delete(request, response);
		}
	}
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		Add_country_dao d = new Add_country_dao();
		List ls = c.load();
		List ls1 = d.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		
		response.sendRedirect("admin/add_city.jsp");
	}
	
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_city_dao c = new Add_city_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_city.jsp");
	}

	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		Add_country_dao d = new Add_country_dao();
		List ls1 = c.load();
		List ls2 = d.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);

		String S1 = request.getParameter("id");
		
		Add_city_vo v = new Add_city_vo();
		v.setCity_id(Long.valueOf(S1));
		
		Add_city_dao c1 = new Add_city_dao();
		List ls = c1.edit(v);
		
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_city.jsp");
	}
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
			String del = request.getParameter("id");
			
			Add_city_vo v1 = new Add_city_vo();
			v1.setCity_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_city_dao d1 = new Add_city_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_city.jsp");
		}
		catch(Exception e)
		{
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
		
			String s1 = request.getParameter("city_name");
			String s2 = request.getParameter("city_desc");
			String s3 = request.getParameter("Country");
			String s4 = request.getParameter("State");
			
			Add_country_vo e1 = new Add_country_vo();
			e1.setCountry_id(Long.valueOf(s3));
			
			Add_state_vo e2 = new Add_state_vo();
			e2.setState_id(Long.valueOf(s4));
			
			Add_city_vo v1 = new Add_city_vo();
			v1.setCity_name(s1);
			v1.setCity_desc(s2);
			
			v1.setV2(e1);
			v1.setV3(e2);
		
			Add_city_dao c2 =  new Add_city_dao();
			c2.insert(v1);
			
			response.sendRedirect("admin/add_city.jsp");
		
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("city_name");
		String s2 = request.getParameter("city_desc");
		String s3 = request.getParameter("Country");
		String s4 = request.getParameter("State");
		String s5 = request.getParameter("id");
		
		Add_country_vo e1 = new Add_country_vo();
		e1.setCountry_id(Long.valueOf(s3));
		
		Add_state_vo e2 = new Add_state_vo();
		e2.setState_id(Long.valueOf(s4));
		
		Add_city_vo v1 = new Add_city_vo();
		v1.setCity_name(s1);
		v1.setCity_desc(s2);
		v1.setCity_id(Long.valueOf(s5));
		
		v1.setV2(e1);
		v1.setV3(e2);
	
		Add_city_dao c2 =  new Add_city_dao();
		c2.update(v1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_city.jsp");
	}
}
