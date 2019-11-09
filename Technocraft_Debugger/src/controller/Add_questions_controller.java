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
import dao.Add_exam_dao;
import dao.Add_qualification_dao;
import dao.Add_questions_dao;
import dao.Add_sub_cat_dao;

import vo.Add_cat_vo;
import vo.Add_exam_vo;
import vo.Add_qualification_vo;
import vo.Add_questions_vo;
import vo.Add_sub_cat_vo;
import vo.user_mst_vo;

/**
 * Servlet implementation class Add_questions_controller
 */
@WebServlet("/Add_questions_controller")
public class Add_questions_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_questions_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String S = request.getParameter("flag");
		String S1 = request.getParameter("user");
		System.out.println(S);
		System.out.println(S1);
		
		if(S.equals("load")&&S1.equals("Admin"))
		{
			load(request,response);
		}
		
		else if(S.equals("load")&&S1.equals("company"))
		{
			loadc(request,response);
		}
		
		else if(S.equals("upload")&&S1.equals("Admin"))
		{
			upload(request,response);
		}
		else if(S.equals("upload")&&S1.equals("company"))
		{
			uploadc(request,response);
		}
		
		else if(S.equals("search")&&S1.equals("Admin"))
		{
			search(request, response);
		}
		
		else if(S.equals("search")&&S1.equals("company"))
		{
			searchc(request, response);
		}
		
		else if(S.equals("edit")&&S1.equals("Admin"))
		{
			edit(request, response);
		}
		
		else if(S.equals("edit")&&S1.equals("company"))
		{
			editc(request, response);
		}
		
		else if(S.equals("delete")&&S1.equals("Admin"))
		{
			delete(request, response);
		}
		
		else if(S.equals("delete")&&S1.equals("company"))
		{
			deletec(request, response);
		}
		
	}
	
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_questions_dao c = new Add_questions_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_questions.jsp");
	}
	
	void searchc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_questions_dao c = new Add_questions_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("Company/manage_questions.jsp");
	}

	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao t1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao t2 = new Add_sub_cat_dao();
		Add_exam_dao t3 = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		List ls1 = t1.load(catvo);
		List ls2 = t2.load(subcatvo);
		List ls3 = t3.load_exam(examvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		
		response.sendRedirect("admin/add_questions.jsp");
	}
	
	void upload (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao t1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao t2 = new Add_sub_cat_dao();
		Add_exam_dao t3 = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		List ls1 = t1.load(catvo);
		List ls2 = t2.load(subcatvo);
		List ls3 = t3.load_exam(examvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		
		response.sendRedirect("admin/upload_question.jsp");
	}
	
	void loadc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao t1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao t2 = new Add_sub_cat_dao();
		Add_exam_dao t3 = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		List ls1 = t1.load(catvo);
		List ls2 = t2.load(subcatvo);
		List ls3 = t3.load_exam(examvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		
		response.sendRedirect("Company/add_questions.jsp");
	}
	
	void uploadc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao t1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao t2 = new Add_sub_cat_dao();
		Add_exam_dao t3 = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		List ls1 = t1.load(catvo);
		List ls2 = t2.load(subcatvo);
		List ls3 = t3.load_exam(examvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		
		response.sendRedirect("Company/upload_question.jsp");
	}
	
	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_questions_vo q1 = new Add_questions_vo();
		q1.setQuestion_id(Long.valueOf(S1));
		
		Add_questions_dao q2 = new Add_questions_dao();
		List ls = q2.edit(q1);
		
		HttpSession s = request.getSession();
		
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao v1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao v2 = new Add_sub_cat_dao();
		Add_exam_dao v3 = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		List ls1 = v1.load(catvo);
		List ls2 = v2.load(subcatvo);
		List ls3 = v3.load_exam(examvo);
		
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_questions.jsp");
	}
	
	void editc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_questions_vo q1 = new Add_questions_vo();
		q1.setQuestion_id(Long.valueOf(S1));
		
		Add_questions_dao q2 = new Add_questions_dao();
		List ls = q2.edit(q1);
		
		HttpSession s = request.getSession();
		
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao v1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao v2 = new Add_sub_cat_dao();
		Add_exam_dao v3 = new Add_exam_dao();
		Add_exam_vo examvo = new Add_exam_vo();
		
		List ls1 = v1.load(catvo);
		List ls2 = v2.load(subcatvo);
		List ls3 = v3.load_exam(examvo);
		
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		
		s.setAttribute("list", ls);
		response.sendRedirect("Company/edit_questions.jsp");
	}
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_questions_vo v1 = new Add_questions_vo();
			v1.setQuestion_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_questions_dao d1 = new Add_questions_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_questions.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	void deletec (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_questions_vo v1 = new Add_questions_vo();
			v1.setQuestion_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_questions_dao d1 = new Add_questions_dao();
			
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			searchc(request,response);
			//response.sendRedirect("admin/manage_questions.jsp");
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
		String U = request.getParameter("user");
		
		if((p1!=null && p1.equals("insert"))&&U.equals("Admin"))
		{
			try {
				insert(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if((p1!=null && p1.equals("insert"))&&U.equals("company"))
		{
			try {
				insertc(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(p1.equals("update")&&U.equals("Admin"))
		{
			try {
				update(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(p1.equals("update")&&U.equals("company"))
		{
			try {
				updatec(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);

		String s1 = request.getParameter("question");
		String s2 = request.getParameter("ans1");
		String s3 = request.getParameter("ans2");
		String s4 = request.getParameter("ans3");
		String s5 = request.getParameter("ans4");
		String s6 = request.getParameter("correct_ans");
		Integer s7 = Integer.parseInt(request.getParameter("question_marks"));
		
		String s8 = request.getParameter("Cat");
		String s9 = request.getParameter("Sub_Cat");
		String s10 = request.getParameter("Exam");
		
		Add_cat_vo e1 = new Add_cat_vo();
		e1.setCat_id(Long.valueOf(s8));
		
		Add_sub_cat_vo e2 = new Add_sub_cat_vo();
		e2.setSub_cat_id(Long.valueOf(s9));
		
		Add_exam_vo e3 = new Add_exam_vo();
		e3.setExam_id(Long.valueOf(s10));
		
		Add_questions_vo qs1 = new Add_questions_vo();
		
		qs1.setQuestion(s1);
		qs1.setAns1(s2);
		qs1.setAns2(s3);
		qs1.setAns3(s3);
		qs1.setAns4(s5);
		qs1.setCorrect_ans(s6);
		qs1.setQuestion_marks(s7);
		
		qs1.setV1(e1);
		qs1.setV2(e2);
		qs1.setV3(e3);
		
		qs1.setUsrid(u1);
	
		Add_questions_dao qs2 = new Add_questions_dao();
		qs2.insert(qs1);
		
		response.sendRedirect("admin/add_questions.jsp");	
	}
	
	void insertc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);

		String s1 = request.getParameter("question");
		String s2 = request.getParameter("ans1");
		String s3 = request.getParameter("ans2");
		String s4 = request.getParameter("ans3");
		String s5 = request.getParameter("ans4");
		String s6 = request.getParameter("correct_ans");
		Integer s7 = Integer.parseInt(request.getParameter("question_marks"));
		
		String s8 = request.getParameter("Cat");
		String s9 = request.getParameter("Sub_Cat");
		String s10 = request.getParameter("Exam");
		
		Add_cat_vo e1 = new Add_cat_vo();
		e1.setCat_id(Long.valueOf(s8));
		
		Add_sub_cat_vo e2 = new Add_sub_cat_vo();
		e2.setSub_cat_id(Long.valueOf(s9));
		
		Add_exam_vo e3 = new Add_exam_vo();
		e3.setExam_id(Long.valueOf(s10));
		
		Add_questions_vo qs1 = new Add_questions_vo();
		
		qs1.setQuestion(s1);
		qs1.setAns1(s2);
		qs1.setAns2(s3);
		qs1.setAns3(s3);
		qs1.setAns4(s5);
		qs1.setCorrect_ans(s6);
		qs1.setQuestion_marks(s7);
		
		qs1.setV1(e1);
		qs1.setV2(e2);
		qs1.setV3(e3);
		
		qs1.setUsrid(u1);
	
		Add_questions_dao qs2 = new Add_questions_dao();
		qs2.insert(qs1);
		
		response.sendRedirect("Company/add_questions.jsp");	
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("question");
		String s2 = request.getParameter("ans1");
		String s3 = request.getParameter("ans2");
		String s4 = request.getParameter("ans3");
		String s5 = request.getParameter("ans4");
		String s6 = request.getParameter("correct_ans");
		Integer s7 = Integer.parseInt(request.getParameter("question_marks"));
		
		String s8 = request.getParameter("Cat");
		String s9 = request.getParameter("Sub_Cat");
		String s10 = request.getParameter("Exam");
		
		String s11 = request.getParameter("id");
		
		Add_cat_vo e1 = new Add_cat_vo();
		e1.setCat_id(Long.valueOf(s8));
		
		Add_sub_cat_vo e2 = new Add_sub_cat_vo();
		e2.setSub_cat_id(Long.valueOf(s9));
		
		Add_exam_vo e3 = new Add_exam_vo();
		e3.setExam_id(Long.valueOf(s10));
		
		Add_questions_vo qs1 = new Add_questions_vo();
		
		qs1.setQuestion(s1);
		qs1.setAns1(s2);
		qs1.setAns2(s3);
		qs1.setAns3(s3);
		qs1.setAns4(s5);
		qs1.setCorrect_ans(s6);
		qs1.setQuestion_marks(s7);
		
		qs1.setV1(e1);
		qs1.setV2(e2);
		qs1.setV3(e3);
		
		qs1.setQuestion_id(Long.valueOf(s11));
	
		Add_questions_dao qs2 = new Add_questions_dao();
		qs2.update(qs1);
		
		searchc(request,response);
		//response.sendRedirect("admin/manage_questions.jsp");
	}
	
	void updatec (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("question");
		String s2 = request.getParameter("ans1");
		String s3 = request.getParameter("ans2");
		String s4 = request.getParameter("ans3");
		String s5 = request.getParameter("ans4");
		String s6 = request.getParameter("correct_ans");
		Integer s7 = Integer.parseInt(request.getParameter("question_marks"));
		
		String s8 = request.getParameter("Cat");
		String s9 = request.getParameter("Sub_Cat");
		String s10 = request.getParameter("Exam");
		
		String s11 = request.getParameter("id");
		
		Add_cat_vo e1 = new Add_cat_vo();
		e1.setCat_id(Long.valueOf(s8));
		
		Add_sub_cat_vo e2 = new Add_sub_cat_vo();
		e2.setSub_cat_id(Long.valueOf(s9));
		
		Add_exam_vo e3 = new Add_exam_vo();
		e3.setExam_id(Long.valueOf(s10));
		
		Add_questions_vo qs1 = new Add_questions_vo();
		
		qs1.setQuestion(s1);
		qs1.setAns1(s2);
		qs1.setAns2(s3);
		qs1.setAns3(s3);
		qs1.setAns4(s5);
		qs1.setCorrect_ans(s6);
		qs1.setQuestion_marks(s7);
		
		qs1.setV1(e1);
		qs1.setV2(e2);
		qs1.setV3(e3);
		
		qs1.setQuestion_id(Long.valueOf(s11));
	
		Add_questions_dao qs2 = new Add_questions_dao();
		qs2.update(qs1);
		
		searchc(request,response);
		
	}
}

	
