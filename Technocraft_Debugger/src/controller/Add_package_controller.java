package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Add_cat_dao;
import dao.Add_job_dao;
import dao.Add_package_dao;

import vo.Add_cat_vo;
import vo.Add_package_vo;

/**
 * Servlet implementation class Add_package_controller
 */
@WebServlet("/Add_package_controller")
public class Add_package_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_package_controller() {
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
			delete(request, response);
		}
	}
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_package_dao c = new Add_package_dao();
		Add_package_vo packvo = new Add_package_vo();
		List ls = c.load(packvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/add_package.jsp");
	}

	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_package_dao c = new Add_package_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_package.jsp");
	}
	
	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_package_vo v = new Add_package_vo();
		v.setPack_id(Long.valueOf(S1));
		
		Add_package_dao d = new Add_package_dao();
		List ls = d.edit(v);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_package.jsp");
	}
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
					
			Add_package_vo v1 = new Add_package_vo();
			v1.setPack_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_package_dao d1 = new Add_package_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_package.jsp");
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
			try {
				insert(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(p1.equals("update"))
		{
			try {
				update(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,Exception
	{
		String s1 = request.getParameter("pack_name");
		String s2 = request.getParameter("pack_desc");
		String s3 = request.getParameter("pack_price");
		
		String s4 = request.getParameter("pack_validity");
		
		String s5 = request.getParameter("pack_type");
		
		Add_package_vo pk1 = new Add_package_vo();
		
		SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy");
		
		Date dt2 = new Date();
		
		try {
			dt2 = dt1.parse(s4);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		pk1.setPack_name(s1);
		pk1.setPack_desc(s2);
		pk1.setPack_price(s3);
		pk1.setPack_validity(dt2);
		pk1.setPack_type(s5);
		
		Add_package_dao pk2 =  new Add_package_dao();
		pk2.insert(pk1);
		
		response.sendRedirect("admin/add_package.jsp");
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,Exception
	{
		String s1 = request.getParameter("pack_name");
		String s2 = request.getParameter("pack_desc");
		String s3 = request.getParameter("pack_price");
		
		String s4 = request.getParameter("pack_validity");
		
		String s5 = request.getParameter("pack_type");
		
		String s6 = request.getParameter("id");
		
		Add_package_vo pk1 = new Add_package_vo();
		
		SimpleDateFormat dt1 = new SimpleDateFormat("yyyy/MM/dd");
		
		Date dt2 = new Date();
		
		try {
			dt2 = dt1.parse(s4);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		pk1.setPack_name(s1);
		pk1.setPack_desc(s2);
		pk1.setPack_price(s3);
		pk1.setPack_validity(dt2);
		pk1.setPack_type(s5);
		pk1.setPack_id(Long.valueOf(s6));
		
		Add_package_dao pk2 =  new Add_package_dao();
		pk2.update(pk1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_package.jsp");
	}
}
