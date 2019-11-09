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

import dao.Add_questions_dao;
import dao.Exam_Result_Dao;

import vo.Add_exam_vo;
import vo.Add_questions_vo;
import vo.Exam_Result_vo;
import vo.user_mst_vo;

/**
 * Servlet implementation class Give_Exam_Controller
 */
@WebServlet("/Give_Exam_Controller")
public class Give_Exam_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Give_Exam_Controller() {
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
		
		String id = request.getParameter("id");
		System.out.println(id);
		
		if(flag!=null && flag.equals("loadexam"))
		{
			loadexam(request,response);
		}
		else if(flag!=null && flag.equals("result"))
		{
			result(request, response);
		}
	}
	void loadexam (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String examid = request.getParameter("id");
		System.out.println("id is = "+examid);
		
		Add_exam_vo examvo = new Add_exam_vo();
		examvo.setExam_id(Long.valueOf(examid));
		
		Add_questions_vo quevo = new Add_questions_vo();
		quevo.setV3(examvo);
		
		Add_questions_dao quedao = new Add_questions_dao();
		
		List giveexam = new ArrayList();
		
		giveexam = quedao.giveexam(quevo);
		
		HttpSession session = request.getSession();
		session.setAttribute("searchque", giveexam);
		session.setAttribute("examcnt",1);
		session.setAttribute("examid", examid);

		response.sendRedirect("User/GiveExam.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		System.out.println(flag);
		
		if(flag!=null && flag.equals("next"))
		{
			next(request,response);
		}
		else if(flag!=null && flag.equals("result"))
		{
			result(request, response);
		}
	}
	void next (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String que = request.getParameter("Question");
		String ans = request.getParameter("ans");
		HttpSession session = request.getSession();
		
		System.out.println("Question id ="+que);
		System.out.println("answer ="+ans);
		
		Add_questions_dao quedao = new Add_questions_dao();
		List ls = quedao.checkAns(Long.valueOf(que));
		
		Add_questions_vo quevo = (Add_questions_vo)ls.get(0);
		
		if(ans.equals(quevo.getCorrect_ans()))
		{
			System.out.println("inside if");
			if(session.getAttribute("examresult")==null)
			{
				System.out.println("Exam Result = "+session.getAttribute("examresult"));
				session.setAttribute("examresult", quevo.getQuestion_marks());
			}
			else
			{
				Integer exammark = (Integer)session.getAttribute("examresult");
				session.setAttribute("examresult",quevo.getQuestion_marks()+exammark);
				System.out.println("eeeeeeeeeeeeeeeeeeeeeeeee"+session.getAttribute("examresult"));
			}
		}
		response.sendRedirect("User/GiveExam.jsp");
	}
	
	void result(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("Inside Result");
		HttpSession session = request.getSession();
		Integer Marks = (Integer)session.getAttribute("examresult");
		System.out.println(Marks);
		
		Add_exam_vo examvo = new Add_exam_vo();
		examvo.setExam_id(Long.valueOf((String) session.getAttribute("examid")));
		
		HttpSession usersession = request.getSession();
		Long uid = (Long)usersession.getAttribute("userID");
		System.out.println("user id is"+uid);
		user_mst_vo usrmstvo = new user_mst_vo();
		usrmstvo.setUser_id(uid);
		
		Exam_Result_vo resultvo = new Exam_Result_vo();
		resultvo.setExam_id(examvo);
		resultvo.setUser_id(usrmstvo);
		
		if(Marks!=null)
		{
			resultvo.setMarks(Long.valueOf(Marks));
		}
		else
		{
			resultvo.setMarks(Long.valueOf("0"));
		}
		
		Exam_Result_Dao resultdao = new Exam_Result_Dao();
		resultdao.insert(resultvo);
		
		response.sendRedirect("User/Exam_Result.jsp");
	}
}
