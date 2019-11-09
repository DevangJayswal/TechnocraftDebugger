package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Add_cat_dao;
import dao.Add_sub_cat_dao;

import vo.Add_cat_vo;
import vo.Add_sub_cat_vo;

/**
 * Servlet implementation class Add_sub_cat_controller
 */
@WebServlet("/Add_sub_cat_controller")
public class Add_sub_cat_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_sub_cat_controller() {
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
		
		else if(S.equals("edit"))
		{
			edit(request, response);
		}
		else if(S.equals("delete"))
		{
			delete(request,response);
		}
	}
	
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_sub_cat_dao c = new Add_sub_cat_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_sub_cat.jsp");
	}

	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		HttpSession s = request.getSession();
		
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao d1 = new Add_cat_dao();
		List ls1 = d1.load(catvo);
		s.setAttribute("list1", ls1);
		
		Add_sub_cat_vo v = new Add_sub_cat_vo();
		v.setSub_cat_id(Long.valueOf(S1));
		
		Add_sub_cat_dao d = new Add_sub_cat_dao();
		List ls = d.edit(v);
		
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_sub_cat.jsp");		
	}

	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
			String del = request.getParameter("id");
			
			System.out.println("idddd = " + del);
			
			Add_sub_cat_vo v1 = new Add_sub_cat_vo();
			v1.setSub_cat_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			
			Add_sub_cat_dao v2 = new Add_sub_cat_dao();
			
			if(!v2.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_sub_cat.jsp");
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
		String s1 = request.getParameter("sub_cat_name");
		String s2 = request.getParameter("sub_cat_desc");
		String s3 = request.getParameter("cat");
		
		System.out.println("id = " + s3);
		
		Add_cat_vo v = new Add_cat_vo();
		v.setCat_id(Long.valueOf(s3));
		
		Add_sub_cat_vo sbc1 = new Add_sub_cat_vo();
		sbc1.setSub_cat_name(s1);
		sbc1.setSub_cat_desc(s2);
		sbc1.setC(v);
		
		Add_sub_cat_dao sbc2 = new Add_sub_cat_dao();
		sbc2.insert(sbc1);
		
		response.sendRedirect("admin/add_sub_cat.jsp");
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("sub_cat_name");
		String s2 = request.getParameter("sub_cat_desc");
		String s3 = request.getParameter("cat");
		
		String s4 = request.getParameter("id");
		
		System.out.println("id = " + s3);
		
		Add_cat_vo v = new Add_cat_vo();
		v.setCat_id(Long.valueOf(s3));
		
		Add_sub_cat_vo sbc1 = new Add_sub_cat_vo();
		sbc1.setSub_cat_name(s1);
		sbc1.setSub_cat_desc(s2);
		sbc1.setC(v);
		
		sbc1.setSub_cat_id(Long.valueOf(s4));
		
		Add_sub_cat_dao sbc2 = new Add_sub_cat_dao();
		sbc2.update(sbc1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_sub_cat.jsp");
	}
}
	