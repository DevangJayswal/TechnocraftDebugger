package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.Add_exam_vo;
import vo.Add_job_vo;
import dao.Add_exam_dao;
import dao.Add_job_dao;

/**
 * Servlet implementation class Exam_Detail_Controller
 */
@WebServlet("/Exam_Detail_Controller")
public class Exam_Detail_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Exam_Detail_Controller() {
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
		
		if(flag!=null&&flag.equals("exam_detail"))
		{
			exam_detail(request, response);
		}
	}
	
	public void exam_detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("id");
		
		Add_exam_dao examdao = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		examvo.setExam_id(Long.valueOf(id));
		
		List exam_list = examdao.load_exam1(examvo);
		HttpSession session = request.getSession();
		session.setAttribute("exam_detail", exam_list);
		
		response.sendRedirect(request.getContextPath()+"/User/exam_detail.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
