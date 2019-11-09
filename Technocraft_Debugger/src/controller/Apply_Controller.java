package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Add_exam_dao;
import dao.Add_job_dao;
import dao.Apply_Dao;
import dao.User_mst_dao;

import vo.Add_exam_vo;
import vo.Add_job_vo;
import vo.Job_Apply_vo;
import vo.user_mst_vo;

/**
 * Servlet implementation class Apply_Controller
 */
@WebServlet("/Apply_Controller")
public class Apply_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Apply_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		System.out.println(flag);
		
		if(flag!=null && flag.equals("Job_Apply"))
		{
			insert(request,response);
		}
	}
	void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
		
		String id = request.getParameter("id");
		String jobtitle = request.getParameter("jobtitle");
		
		Add_job_vo jobvo = new Add_job_vo();
		jobvo.setJob_id(Long.valueOf(id));
		
		//jobvo.getJob_title();
		Job_Apply_vo Applyvo = new Job_Apply_vo();
		Applyvo.setUser_id(u1);
		Applyvo.setJob_id(jobvo);
		
		Apply_Dao Applydao = new Apply_Dao();
		Applydao.insert(Applyvo);
		
		
		HttpSession w = request.getSession();
		w.setAttribute("title", jobtitle);
				
		response.sendRedirect("User/Apply_Detail.jsp");
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
