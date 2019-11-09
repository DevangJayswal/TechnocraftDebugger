package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;

import dao.Add_package_dao;

import vo.Add_package_vo;

/**
 * Servlet implementation class Package_Menu
 */
@WebServlet("/Package_Menu")
public class Package_Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Package_Menu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		load(request, response);
	}

	private void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List packls = new ArrayList();
		Add_package_vo packvo = new Add_package_vo();
		Add_package_dao packdao = new Add_package_dao();
		packls = packdao.load(packvo);
		
		System.out.println("Vo Done");
		
		HttpSession session = request.getSession();
		session.setAttribute("package1", packls);
		System.out.println("Done");
		
		response.sendRedirect("Company/index.jsp");
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
