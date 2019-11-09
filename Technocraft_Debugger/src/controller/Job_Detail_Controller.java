package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.Add_job_vo;

import dao.Add_job_dao;

/**
 * Servlet implementation class Job_Detail_Controller
 */
@WebServlet("/Job_Detail_Controller")
public class Job_Detail_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Job_Detail_Controller() {
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
		
		if(flag!=null&&flag.equals("job_detail"))
		{
			job_detail(request, response);
		}
	}
	
	public void job_detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("id");
		
		Add_job_dao jobdao = new Add_job_dao();
		Add_job_vo jobvo = new Add_job_vo();
		
		jobvo.setJob_id(Long.valueOf(id));
		
		List job_list = jobdao.load_job1(jobvo);
		HttpSession session = request.getSession();
		session.setAttribute("job_detail", job_list);
		
		response.sendRedirect(request.getContextPath()+"/User/job_detail.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
