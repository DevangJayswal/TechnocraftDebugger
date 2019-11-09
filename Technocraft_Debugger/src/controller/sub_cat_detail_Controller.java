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
import vo.Add_sub_cat_vo;
import dao.Add_exam_dao;
import dao.Add_job_dao;
import dao.Add_sub_cat_dao;

/**
 * Servlet implementation class sub_cat_detail_Controller
 */
@WebServlet("/sub_cat_detail_Controller")
public class sub_cat_detail_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sub_cat_detail_Controller() {
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
		
		if(flag!=null&&flag.equals("job_list"))
		{
			job_list(request, response);
		}
		
		else if(flag!=null&&flag.equals("exam_list"))
		{
			exam_list(request, response);
		}
	}
	
	public void job_list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("id");
		
		Add_job_dao jobdao = new Add_job_dao();
		Add_job_vo jobvo = new Add_job_vo();
		
		Add_sub_cat_vo subcat= new Add_sub_cat_vo();
		subcat.setSub_cat_id(Long.valueOf(id));
		
		jobvo.setB(subcat);
		
		List job_list = jobdao.load_job2(jobvo);
		HttpSession session = request.getSession();
		session.setAttribute("job_list", job_list);
		
		response.sendRedirect(request.getContextPath()+"/User/job_list.jsp");
		
	}

	public void exam_list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("id");
		
		Add_exam_dao examdao = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		Add_sub_cat_vo subcatvo= new Add_sub_cat_vo();
		subcatvo.setSub_cat_id(Long.valueOf(id));
		
		examvo.setV2(subcatvo);
		
		List exam_list = examdao.load_exam2(examvo);
		HttpSession session = request.getSession();
		session.setAttribute("exam_list", exam_list);
		
		response.sendRedirect(request.getContextPath()+"/User/exam_list.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
