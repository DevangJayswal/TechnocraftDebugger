package controller;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class Company_Menu
 */
@WebServlet("/Company_Menu")
public class Company_Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company_Menu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		load(request,response);
	}
	private void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List catls = new ArrayList();
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao catdao = new Add_cat_dao();
		catls = catdao.load(catvo);
		
		List subcatls = new ArrayList();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao subcatdao = new Add_sub_cat_dao();
		subcatls = subcatdao.load(subcatvo);
		
		
		System.out.println("Vo done");
		
		HttpSession session = request.getSession();
		session.setAttribute("category", catls);
		session.setAttribute("subcategory", subcatls);
		System.out.println("done");
		
		
		response.sendRedirect("Company/index.jsp");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
