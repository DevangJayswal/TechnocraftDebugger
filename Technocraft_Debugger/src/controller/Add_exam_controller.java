package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import vo.Add_exam_vo;
import vo.Add_cat_vo;
import vo.Add_job_vo;
import vo.Add_sub_cat_vo;
import vo.user_mst_vo;

import dao.Add_cat_dao;
import dao.Add_city_dao;
import dao.Add_exam_dao;
import dao.Add_job_dao;
import dao.Add_sub_cat_dao;

/**
 * Servlet implementation class Add_exam_controller
 */
@WebServlet("/Add_exam_controller")
public class Add_exam_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_exam_controller() {
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
		else if(S.equals("search")&&S1.equals("Admin"))
		{
			search(request,response);
		}
		
		else if(S.equals("search")&&S1.equals("company"))
		{
			searchc(request,response);
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
		else if(S.equals("activestatus"))
		{
			setstatusactive(request,response);
		}
		else if(S.equals("deactivestatus"))
		{
			setstatusdeactive(request,response);
		}
	}
	void setstatusactive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String examid = request.getParameter("id");
		System.out.println("user id is = "+examid);
		
		Add_exam_vo exam_vo = new Add_exam_vo();
		exam_vo.setExam_id(Long.valueOf(examid));
		
		Add_exam_dao exam_dao = new Add_exam_dao();
		
		List examList = exam_dao.load_exam1(exam_vo);
		Iterator itr =  examList.iterator();
		
		exam_vo = (Add_exam_vo)itr.next();
		
		String exam_name = exam_vo.getExam_name();
		String exam_desc = exam_vo.getExam_desc();
		String from_date = exam_vo.getFrom_exam_date();
		String to_date = exam_vo.getTo_exam_date();
		int time_hour = exam_vo.getExam_time_hour();
		int time_min = exam_vo.getExam_time_min();
		int total_mark = exam_vo.getTotal_marks();
		int pass_mark = exam_vo.getPass_marks();

		Add_cat_vo cat_vo = exam_vo.getV1();
		Add_sub_cat_vo sub_cat_vo = exam_vo.getV2();
		
		exam_vo.setExam_name(exam_name);
		exam_vo.setExam_desc(exam_desc);
		exam_vo.setFrom_exam_date(from_date);
		exam_vo.setTo_exam_date(to_date);
		exam_vo.setExam_time_hour(time_hour);
		exam_vo.setExam_time_min(time_min);
		exam_vo.setTotal_marks(total_mark);
		exam_vo.setPass_marks(pass_mark);
		exam_vo.setExam_status(1);
		exam_vo.setV1(cat_vo);
		exam_vo.setV2(sub_cat_vo);
		
		exam_dao.update(exam_vo);
		
		search(request, response);
	}
	
	void setstatusdeactive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String examid = request.getParameter("id");
		System.out.println("user id is = "+examid);
		
		Add_exam_vo exam_vo = new Add_exam_vo();
		exam_vo.setExam_id(Long.valueOf(examid));
		
		Add_exam_dao exam_dao = new Add_exam_dao();
		
		List examList = exam_dao.load_exam1(exam_vo);
		Iterator itr =  examList.iterator();
		
		exam_vo = (Add_exam_vo)itr.next();
		
		String exam_name = exam_vo.getExam_name();
		String exam_desc = exam_vo.getExam_desc();
		String from_date = exam_vo.getFrom_exam_date();
		String to_date = exam_vo.getTo_exam_date();
		int time_hour = exam_vo.getExam_time_hour();
		int time_min = exam_vo.getExam_time_min();
		int total_mark = exam_vo.getTotal_marks();
		int pass_mark = exam_vo.getPass_marks();

		Add_cat_vo cat_vo = exam_vo.getV1();
		Add_sub_cat_vo sub_cat_vo = exam_vo.getV2();
		
		exam_vo.setExam_name(exam_name);
		exam_vo.setExam_desc(exam_desc);
		exam_vo.setFrom_exam_date(from_date);
		exam_vo.setTo_exam_date(to_date);
		exam_vo.setExam_time_hour(time_hour);
		exam_vo.setExam_time_min(time_min);
		exam_vo.setTotal_marks(total_mark);
		exam_vo.setPass_marks(pass_mark);
		exam_vo.setExam_status(0);
		exam_vo.setV1(cat_vo);
		exam_vo.setV2(sub_cat_vo);
		
		exam_dao.update(exam_vo);
		
		search(request, response);
	}

	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_exam_dao c = new Add_exam_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_exam.jsp");
	}
	
	void searchc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_exam_dao c = new Add_exam_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("Company/manage_exam.jsp");
	}
	
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao t1 = new Add_cat_dao();
		List ls1 = t1.load(catvo);
		
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao t2 = new Add_sub_cat_dao();
		List ls2 = t2.load(subcatvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		
		response.sendRedirect("admin/add_exam.jsp");
	}
	
	void loadc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao t1 = new Add_cat_dao();
		List ls1 = t1.load(catvo);
		
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao t2 = new Add_sub_cat_dao();
		List ls2 = t2.load(subcatvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		
		response.sendRedirect("Company/add_exam.jsp");
	}

	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_exam_vo v = new Add_exam_vo();
		v.setExam_id(Long.valueOf(S1));
		
		Add_exam_dao d = new Add_exam_dao();
		List ls = d.edit(v);
		
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao a1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao a2 = new Add_sub_cat_dao();
		
		List ls1 = a1.load(catvo);
		List ls2 = a2.load(subcatvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		
		
		response.sendRedirect("admin/edit_exam.jsp");
	}
	
	void editc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_exam_vo v = new Add_exam_vo();
		v.setExam_id(Long.valueOf(S1));
		
		Add_exam_dao d = new Add_exam_dao();
		List ls = d.edit(v);
		
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao a1 = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao a2 = new Add_sub_cat_dao();
		
		List ls1 = a1.load(catvo);
		List ls2 = a2.load(subcatvo);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		
		
		response.sendRedirect("Company/edit_exam.jsp");
	}
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_exam_vo v1 = new Add_exam_vo();
			v1.setExam_id(Long.valueOf(del));

			HttpSession session = request.getSession();
			Add_exam_dao d1 = new Add_exam_dao();
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Record First !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_exam.jsp");
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
				
				Add_exam_vo v1 = new Add_exam_vo();
				v1.setExam_id(Long.valueOf(del));

				HttpSession session = request.getSession();
				Add_exam_dao d1 = new Add_exam_dao();
				if(!d1.delete(v1))
				{
					session.setAttribute("deleteflag", "Delete All The Record First !");
				}
				
				searchc(request,response);
				//response.sendRedirect("admin/manage_exam.jsp");
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
		
		
		if((p1!=null&&p1.equals("insert"))&&U.equals("Admin"))
		{
			try {
				insert(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if((p1!=null&&p1.equals("insert"))&&U.equals("company"))
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
				update(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(p1.equals("update")&&U.equals("company"))
		{
			try {
				updatec(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,Exception
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
		
		String s1 = request.getParameter("exam_name");
		String s2 = request.getParameter("exam_desc");
		
		String fexamdate = request.getParameter("from_exam_date");
		String texamdate = request.getParameter("to_exam_date");
		
		Integer hexamtime = Integer.parseInt(request.getParameter("hours_examtime"));
		Integer mexamtime = Integer.parseInt(request.getParameter("min_examtime"));
		
		Integer s5 = Integer.parseInt(request.getParameter("total_marks"));
		Integer s6 = Integer.parseInt(request.getParameter("pass_marks"));
		
		String s7 = request.getParameter("Cat");
		String s8 = request.getParameter("Sub_Cat");
		String status = request.getParameter("status");
		
		
		int i;
		if(status.equals("active"))
		{
			i=1;
		}
		else
		{
			i=0;
		}
		/*SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy");
		
		Date dt2 = new Date();
		
		try {
			dt2 = dt1.parse(s3);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		Add_cat_vo v1 = new Add_cat_vo();
		v1.setCat_id(Long.valueOf(s7));
		
		Add_sub_cat_vo v2 = new Add_sub_cat_vo();
		v2.setSub_cat_id(Long.valueOf(s8));
		
		Add_exam_vo e1 = new Add_exam_vo();
		e1.setExam_name(s1);
		e1.setExam_desc(s2);
		e1.setTo_exam_date(texamdate);
		e1.setFrom_exam_date(fexamdate);
		e1.setExam_time_hour(hexamtime);
		e1.setExam_time_min(mexamtime);
		e1.setTotal_marks(s5);
		e1.setPass_marks(s6);
		e1.setExam_status(i);
		e1.setV1(v1);
		e1.setV2(v2);
		
		e1.setUsrid(u1);
		
		Add_exam_dao e2 = new Add_exam_dao();
		e2.insert(e1);
		
		response.sendRedirect("admin/add_exam.jsp");
	}

	void insertc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,Exception
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
		
		String s1 = request.getParameter("exam_name");
		String s2 = request.getParameter("exam_desc");
		
		String fexamdate = request.getParameter("from_exam_date");
		String texamdate = request.getParameter("to_exam_date");
		
		Integer hexamtime = Integer.parseInt(request.getParameter("hours_examtime"));
		Integer mexamtime = Integer.parseInt(request.getParameter("min_examtime"));
		
		Integer s5 = Integer.parseInt(request.getParameter("total_marks"));
		Integer s6 = Integer.parseInt(request.getParameter("pass_marks"));
		
		String s7 = request.getParameter("Cat");
		String s8 = request.getParameter("Sub_Cat");
		String status = request.getParameter("status");
		
		
		int i;
		if(status.equals("active"))
		{
			i=1;
		}
		else
		{
			i=0;
		}
		
		/*SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy");
		
		Date dt2 = new Date();
		
		try {
			dt2 = dt1.parse(s3);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		Add_cat_vo v1 = new Add_cat_vo();
		v1.setCat_id(Long.valueOf(s7));
		
		Add_sub_cat_vo v2 = new Add_sub_cat_vo();
		v2.setSub_cat_id(Long.valueOf(s8));
		
		Add_exam_vo e1 = new Add_exam_vo();
		e1.setExam_name(s1);
		e1.setExam_desc(s2);
		e1.setTo_exam_date(texamdate);
		e1.setFrom_exam_date(fexamdate);
		e1.setExam_time_hour(hexamtime);
		e1.setExam_time_min(mexamtime);
		e1.setTotal_marks(s5);
		e1.setPass_marks(s6);
		e1.setExam_status(i);
		e1.setV1(v1);
		e1.setV2(v2);
		
		e1.setUsrid(u1);
		
		Add_exam_dao e2 = new Add_exam_dao();
		e2.insert(e1);
		
		response.sendRedirect("Company/add_exam.jsp");
	}
	
	void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,Exception
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
		
		String s1 = request.getParameter("exam_name");
		String s2 = request.getParameter("exam_desc");
		
		String fexamdate = request.getParameter("from_exam_date");
		String texamdate = request.getParameter("to_exam_date");
		
		Integer hexamtime = Integer.parseInt(request.getParameter("hours_examtime"));
		Integer mexamtime = Integer.parseInt(request.getParameter("min_examtime"));
		
		Integer s5 = Integer.parseInt(request.getParameter("total_marks"));
		Integer s6 = Integer.parseInt(request.getParameter("pass_marks"));
		
		String s7 = request.getParameter("Cat");
		String s8 = request.getParameter("Sub_Cat");
		String status = request.getParameter("status");
		
		
		int i;
		if(status.equals("active"))
		{
			i=1;
		}
		else
		{
			i=0;
		}
		
		/*SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy");
		
		Date dt2 = new Date();
		
		try {
			dt2 = dt1.parse(s3);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		Add_cat_vo v1 = new Add_cat_vo();
		v1.setCat_id(Long.valueOf(s7));
		
		Add_sub_cat_vo v2 = new Add_sub_cat_vo();
		v2.setSub_cat_id(Long.valueOf(s8));
		
		Add_exam_vo e1 = new Add_exam_vo();
		e1.setExam_name(s1);
		e1.setExam_desc(s2);
		e1.setTo_exam_date(texamdate);
		e1.setFrom_exam_date(fexamdate);
		e1.setExam_time_hour(hexamtime);
		e1.setExam_time_min(mexamtime);
		e1.setTotal_marks(s5);
		e1.setPass_marks(s6);
		e1.setExam_status(i);
		e1.setV1(v1);
		e1.setV2(v2);
		
		e1.setUsrid(u1);
		
		Add_exam_dao e2 = new Add_exam_dao();
		e2.update(e1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_exam.jsp");

	}
	
	void updatec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,Exception
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
		
		String s1 = request.getParameter("exam_name");
		String s2 = request.getParameter("exam_desc");
		
		String fexamdate = request.getParameter("from_exam_date");
		String texamdate = request.getParameter("to_exam_date");
		
		Integer hexamtime = Integer.parseInt(request.getParameter("hours_examtime"));
		Integer mexamtime = Integer.parseInt(request.getParameter("min_examtime"));
		
		Integer s5 = Integer.parseInt(request.getParameter("total_marks"));
		Integer s6 = Integer.parseInt(request.getParameter("pass_marks"));
		
		String s7 = request.getParameter("Cat");
		String s8 = request.getParameter("Sub_Cat");
		String status = request.getParameter("status");
		
		int i;
		if(status.equals("active"))
		{
			i=1;
		}
		else
		{
			i=0;
		}
		
		/*SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy");
		
		Date dt2 = new Date();
		
		try {
			dt2 = dt1.parse(s3);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		Add_cat_vo v1 = new Add_cat_vo();
		v1.setCat_id(Long.valueOf(s7));
		
		Add_sub_cat_vo v2 = new Add_sub_cat_vo();
		v2.setSub_cat_id(Long.valueOf(s8));
		
		Add_exam_vo e1 = new Add_exam_vo();
		e1.setExam_name(s1);
		e1.setExam_desc(s2);
		e1.setTo_exam_date(texamdate);
		e1.setFrom_exam_date(fexamdate);
		e1.setExam_time_hour(hexamtime);
		e1.setExam_time_min(mexamtime);
		e1.setTotal_marks(s5);
		e1.setPass_marks(s6);
		e1.setExam_status(i);
		e1.setV1(v1);
		e1.setV2(v2);
		
		e1.setUsrid(u1);
		
		Add_exam_dao e2 = new Add_exam_dao();
		e2.update(e1);
		
		searchc(request,response);
		//response.sendRedirect("admin/manage_exam.jsp");

	}
}
