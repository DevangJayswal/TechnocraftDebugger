package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Add_package_dao;

import vo.Add_package_vo;

/**
 * Servlet implementation class Package_Detail_Controller
 */
@WebServlet("/Package_Detail_Controller")
public class Package_Detail_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Package_Detail_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag = request.getParameter("flag");
		String id = request.getParameter("id");
		
		System.out.println(flag);
		System.out.println(id);
		
		if(flag!=null&&flag.equals("pack_detail"))
		{
			pack_detail(request,response);
		}
	}
	
	public void pack_detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("id");
		
		Add_package_vo packvo = new Add_package_vo();
		Add_package_dao packdao = new Add_package_dao();
		
		packvo.setPack_id(Long.valueOf(id));
		
		List pack_list = packdao.pack_detail_load(packvo);
		HttpSession session = request.getSession();
		session.setAttribute("pack_detail", pack_list);
		
		response.sendRedirect(request.getContextPath()+"/User/package_detail.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
