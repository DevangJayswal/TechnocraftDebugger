package controller;

import java.io.IOException;

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

import dao.Add_cat_dao;
import dao.Add_city_dao;
import dao.Add_country_dao;
import dao.User_mst_dao;

import dao.Add_job_dao;
import dao.Add_state_dao;
import dao.Add_sub_cat_dao;

import vo.Add_cat_vo;
import vo.Add_city_vo;
import vo.Add_country_vo;
import vo.user_mst_vo;

import vo.Add_job_vo;
import vo.Add_state_vo;
import vo.Add_sub_cat_vo;

/**
 * Servlet implementation class Add_job_controller
 */
@WebServlet("/Add_job_controller")
public class Add_job_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_job_controller() {
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
			edit(request,response);
		}
		
		else if(S.equals("edit")&&S1.equals("company"))
		{
			editc(request,response);
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
		String jobid = request.getParameter("id");
		System.out.println("user id is = "+jobid);
		
		Add_job_vo job_vo = new Add_job_vo();
		job_vo.setJob_id(Long.valueOf(jobid));
		
		Add_job_dao job_dao = new Add_job_dao();
		
		List JobList = job_dao.load_job1(job_vo);
		Iterator itr =  JobList.iterator();
		
		job_vo = (Add_job_vo)itr.next();
		
		String job_title = job_vo.getJob_title();
		String job_desc = job_vo.getJob_description();
		String job_skill = job_vo.getJob_skills();
		String job_salary = job_vo.getJob_salary();
		String job_address = job_vo.getJob_address();
		String c_name = job_vo.getCompany_name();
		String c_email = job_vo.getComapny_email();
		String ref_name = job_vo.getRef_name();
		String ref_number = job_vo.getRef_number();
		String per_ten = job_vo.getTen_per();
		String per_twelve = job_vo.getTwelve_per();
		String per_gradu = job_vo.getGraduation();
		String app_date = job_vo.getApp_date();
		String inter_date = job_vo.getInter_date();
		Add_cat_vo cat_vo = job_vo.getA();
		Add_sub_cat_vo sub_cat_vo = job_vo.getB();
		Add_country_vo country_vo = job_vo.getC();
		Add_state_vo state_vo = job_vo.getD();
		Add_city_vo city_vo = job_vo.getE();
		
		job_vo.setJob_title(job_title);
		job_vo.setJob_description(job_desc);
		job_vo.setJob_skills(job_skill);
		job_vo.setJob_salary(job_salary);
		job_vo.setJob_address(job_address);
		job_vo.setCompany_name(c_name);
		job_vo.setComapny_email(c_email);
		job_vo.setRef_name(ref_name);
		job_vo.setRef_number(ref_number);
		job_vo.setTen_per(per_ten);
		job_vo.setTwelve_per(per_twelve);
		job_vo.setGraduation(per_gradu);
		job_vo.setApp_date(app_date);
		job_vo.setInter_date(inter_date);
		job_vo.setJob_status(1);
		job_vo.setA(cat_vo);
		job_vo.setB(sub_cat_vo);
		job_vo.setC(country_vo);
		job_vo.setD(state_vo);
		job_vo.setE(city_vo);
		
		job_dao.update(job_vo);
		
		search(request,response);
	}
	
	void setstatusdeactive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String jobid = request.getParameter("id");
		System.out.println("user id is = "+jobid);
		
		Add_job_vo job_vo = new Add_job_vo();
		job_vo.setJob_id(Long.valueOf(jobid));
		
		Add_job_dao job_dao = new Add_job_dao();
		
		List JobList = job_dao.load_job1(job_vo);
		Iterator itr =  JobList.iterator();
		
		job_vo = (Add_job_vo)itr.next();
		
		String job_title = job_vo.getJob_title();
		String job_desc = job_vo.getJob_description();
		String job_skill = job_vo.getJob_skills();
		String job_salary = job_vo.getJob_salary();
		String job_address = job_vo.getJob_address();
		String c_name = job_vo.getCompany_name();
		String c_email = job_vo.getComapny_email();
		String ref_name = job_vo.getRef_name();
		String ref_number = job_vo.getRef_number();
		String per_ten = job_vo.getTen_per();
		String per_twelve = job_vo.getTwelve_per();
		String per_gradu = job_vo.getGraduation();
		String app_date = job_vo.getApp_date();
		String inter_date = job_vo.getInter_date();
		Add_cat_vo cat_vo = job_vo.getA();
		Add_sub_cat_vo sub_cat_vo = job_vo.getB();
		Add_country_vo country_vo = job_vo.getC();
		Add_state_vo state_vo = job_vo.getD();
		Add_city_vo city_vo = job_vo.getE();
		
		job_vo.setJob_title(job_title);
		job_vo.setJob_description(job_desc);
		job_vo.setJob_skills(job_skill);
		job_vo.setJob_salary(job_salary);
		job_vo.setJob_address(job_address);
		job_vo.setCompany_name(c_name);
		job_vo.setComapny_email(c_email);
		job_vo.setRef_name(ref_name);
		job_vo.setRef_number(ref_number);
		job_vo.setTen_per(per_ten);
		job_vo.setTwelve_per(per_twelve);
		job_vo.setGraduation(per_gradu);
		job_vo.setApp_date(app_date);
		job_vo.setInter_date(inter_date);
		job_vo.setJob_status(0);
		job_vo.setA(cat_vo);
		job_vo.setB(sub_cat_vo);
		job_vo.setC(country_vo);
		job_vo.setD(state_vo);
		job_vo.setE(city_vo);
			
		job_dao.update(job_vo);
		
		search(request,response);
	}
	
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		Add_country_dao d = new Add_country_dao();
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao e = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao f = new Add_sub_cat_dao();
		Add_city_dao g = new Add_city_dao();
		
		List ls = c.load();
		List ls1 = d.load();
		List ls2 = e.load(catvo);
		List ls3 = f.load(subcatvo);
		List ls4 = g.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		s.setAttribute("list4", ls4);
		
		response.sendRedirect("admin/add_job.jsp");
	}
	
	void loadc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		Add_country_dao d = new Add_country_dao();
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao e = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao f = new Add_sub_cat_dao();
		Add_city_dao g = new Add_city_dao();
		
		List ls = c.load();
		List ls1 = d.load();
		List ls2 = e.load(catvo);
		List ls3 = f.load(subcatvo);
		List ls4 = g.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		s.setAttribute("list4", ls4);
		
		response.sendRedirect("Company/add_job.jsp");
	}
	
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_job_dao c = new Add_job_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list5", ls);
		response.sendRedirect("admin/manage_job.jsp");
	}
	
	void searchc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_job_dao c = new Add_job_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list5", ls);
		response.sendRedirect("Company/manage_job.jsp");
	}


	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		Add_country_dao d = new Add_country_dao();
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao e = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao f = new Add_sub_cat_dao();
		Add_city_dao g = new Add_city_dao();
		List ls = c.load();
		List ls1 = d.load();
		List ls2 = e.load(catvo);
		List ls3 = f.load(subcatvo);
		List ls4 = g.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		s.setAttribute("list4", ls4);
		
		String s1 = request.getParameter("id");
		
		Add_job_vo v = new Add_job_vo();
		v.setJob_id(Long.valueOf(s1));
		
		Add_job_dao c1 = new Add_job_dao();
		List ls5 = c1.edit(v);
		
		s.setAttribute("list5", ls5);
		response.sendRedirect("admin/edit_job.jsp");
	}
	
	void editc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_state_dao c = new Add_state_dao();
		Add_country_dao d = new Add_country_dao();
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao e = new Add_cat_dao();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao f = new Add_sub_cat_dao();
		Add_city_dao g = new Add_city_dao();
		List ls = c.load();
		List ls1 = d.load();
		List ls2 = e.load(catvo);
		List ls3 = f.load(subcatvo);
		List ls4 = g.load();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		s.setAttribute("list1", ls1);
		s.setAttribute("list2", ls2);
		s.setAttribute("list3", ls3);
		s.setAttribute("list4", ls4);
		
		String s1 = request.getParameter("id");
		
		Add_job_vo v = new Add_job_vo();
		v.setJob_id(Long.valueOf(s1));
		
		Add_job_dao c1 = new Add_job_dao();
		List ls5 = c1.edit(v);
		
		s.setAttribute("list5", ls5);
		response.sendRedirect("Company/edit_job.jsp");
	}
	
	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_job_vo v1 = new Add_job_vo();
			v1.setJob_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_job_dao d1 = new Add_job_dao();
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_job.jsp");
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
			
			Add_job_vo v1 = new Add_job_vo();
			v1.setJob_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_job_dao d1 = new Add_job_dao();
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Records First. !");
			}
			
			searchc(request,response);
			//response.sendRedirect("admin/manage_job.jsp");
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
		
		if((p1!=null && p1.equals("insert"))&&U.equals("company"))
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
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
	
		String s1 = request.getParameter("job_title");
		String s2 = request.getParameter("job_description");
		String s3 = request.getParameter("job_skills");
		String s4 = request.getParameter("job_salary");
		String s5 = request.getParameter("job_address");
		String s6 = request.getParameter("company_name");
		String s7 = request.getParameter("company_email");
		String s8 = request.getParameter("ref_name");
		String s9 = request.getParameter("ref_number");
		String s10 = request.getParameter("ten_per");
		String s11 = request.getParameter("twelve_per");
		String s12 = request.getParameter("graduation");
		
		String s13 = request.getParameter("app_date");
		String s14 = request.getParameter("inter_date");
		
		String s15 = request.getParameter("cat");
		String s16 = request.getParameter("subcat");
		String s17 = request.getParameter("country");
		String s18 = request.getParameter("state");
		String s19 = request.getParameter("city");
		
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
		
		Add_cat_vo a = new Add_cat_vo();
		a.setCat_id(Long.valueOf(s15));
		
		Add_sub_cat_vo b = new Add_sub_cat_vo();
		b.setSub_cat_id(Long.valueOf(s16));
		
		Add_country_vo c = new Add_country_vo();
		c.setCountry_id(Long.valueOf(s17));
		
		Add_state_vo d = new Add_state_vo();
		d.setState_id(Long.valueOf(s18));
		
		Add_city_vo e = new Add_city_vo();
		e.setCity_id(Long.valueOf(s19));
		
		Add_job_vo j1 = new Add_job_vo();
		
		j1.setJob_title(s1);
		j1.setJob_description(s2);
		j1.setJob_skills(s3);
		j1.setJob_salary(s4);
		j1.setJob_address(s5);
		j1.setCompany_name(s6);
		j1.setComapny_email(s7);
		j1.setRef_name(s8);
		j1.setRef_number(s9);
		j1.setTen_per(s10);
		j1.setTwelve_per(s11);
		j1.setGraduation(s12);
		j1.setApp_date(s13);
		j1.setInter_date(s14);
		j1.setJob_status(i);
		
		j1.setA(a);
		j1.setB(b);
		j1.setC(c);
		j1.setD(d);
		j1.setE(e);
	
		j1.setUsrid(u1);
		
		Add_job_dao j2 = new Add_job_dao();
		j2.insert(j1);
		
		response.sendRedirect("admin/add_job.jsp");
	}
	
	void insertc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception
	{
		HttpSession session = request.getSession();
		long u = (long)session.getAttribute("userID");
		user_mst_vo u1 = new user_mst_vo();
		u1.setUser_id(u);
	
		String s1 = request.getParameter("job_title");
		String s2 = request.getParameter("job_description");
		String s3 = request.getParameter("job_skills");
		String s4 = request.getParameter("job_salary");
		String s5 = request.getParameter("job_address");
		String s6 = request.getParameter("company_name");
		String s7 = request.getParameter("company_email");
		String s8 = request.getParameter("ref_name");
		String s9 = request.getParameter("ref_number");
		String s10 = request.getParameter("ten_per");
		String s11 = request.getParameter("twelve_per");
		String s12 = request.getParameter("graduation");
		
		String s13 = request.getParameter("app_date");
		String s14 = request.getParameter("inter_date");
		
		String s15 = request.getParameter("cat");
		String s16 = request.getParameter("subcat");
		String s17 = request.getParameter("country");
		String s18 = request.getParameter("state");
		String s19 = request.getParameter("city");
		
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
		
		Add_cat_vo a = new Add_cat_vo();
		a.setCat_id(Long.valueOf(s15));
		
		Add_sub_cat_vo b = new Add_sub_cat_vo();
		b.setSub_cat_id(Long.valueOf(s16));
		
		Add_country_vo c = new Add_country_vo();
		c.setCountry_id(Long.valueOf(s17));
		
		Add_state_vo d = new Add_state_vo();
		d.setState_id(Long.valueOf(s18));
		
		Add_city_vo e = new Add_city_vo();
		e.setCity_id(Long.valueOf(s19));
		
		Add_job_vo j1 = new Add_job_vo();
		
		j1.setJob_title(s1);
		j1.setJob_description(s2);
		j1.setJob_skills(s3);
		j1.setJob_salary(s4);
		j1.setJob_address(s5);
		j1.setCompany_name(s6);
		j1.setComapny_email(s7);
		j1.setRef_name(s8);
		j1.setRef_number(s9);
		j1.setTen_per(s10);
		j1.setTwelve_per(s11);
		j1.setGraduation(s12);
		j1.setApp_date(s13);
		j1.setInter_date(s14);
		j1.setJob_status(i);
		
		j1.setA(a);
		j1.setB(b);
		j1.setC(c);
		j1.setD(d);
		j1.setE(e);
		
		j1.setUsrid(u1);
		
		Add_job_dao j2 = new Add_job_dao();
		j2.insert(j1);
		
		response.sendRedirect("Company/add_job.jsp");
	}
	
	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception
	{
		String s1 = request.getParameter("job_title");
		String s2 = request.getParameter("job_description");
		String s3 = request.getParameter("job_skills");
		String s4 = request.getParameter("job_salary");
		String s5 = request.getParameter("job_address");
		String s6 = request.getParameter("company_name");
		String s7 = request.getParameter("company_email");
		String s8 = request.getParameter("ref_name");
		String s9 = request.getParameter("ref_number");
		String s10 = request.getParameter("ten_per");
		String s11 = request.getParameter("twelve_per");
		String s12 = request.getParameter("graduation");
		String s13 = request.getParameter("app_date");
		String s14 = request.getParameter("inter_date");
		String s15 = request.getParameter("cat");
		String s16 = request.getParameter("subcat");
		String s17 = request.getParameter("country");
		String s18 = request.getParameter("state");
		String s19 = request.getParameter("city");
		
		String s20 = request.getParameter("id");
		
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
		
		Add_cat_vo a = new Add_cat_vo();
		a.setCat_id(Long.valueOf(s15));
		
		Add_sub_cat_vo b = new Add_sub_cat_vo();
		b.setSub_cat_id(Long.valueOf(s16));
		
		Add_country_vo c = new Add_country_vo();
		c.setCountry_id(Long.valueOf(s17));
		
		Add_state_vo d = new Add_state_vo();
		d.setState_id(Long.valueOf(s18));
		
		Add_city_vo e = new Add_city_vo();
		e.setCity_id(Long.valueOf(s19));
		
		Add_job_vo j1 = new Add_job_vo();
		
		j1.setJob_title(s1);
		j1.setJob_description(s2);
		j1.setJob_skills(s3);
		j1.setJob_salary(s4);
		j1.setJob_address(s5);
		j1.setCompany_name(s6);
		j1.setComapny_email(s7);
		j1.setRef_name(s8);
		j1.setRef_number(s9);
		j1.setTen_per(s10);
		j1.setTwelve_per(s11);
		j1.setGraduation(s12);
		j1.setApp_date(s13);
		j1.setInter_date(s14);
		j1.setJob_status(i);
		
		j1.setJob_id(Long.valueOf(s20));
		
		j1.setA(a);
		j1.setB(b);
		j1.setC(c);
		j1.setD(d);
		j1.setE(e);
		
		Add_job_dao j2 = new Add_job_dao();
		j2.update(j1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_job.jsp");
	}
	
	void updatec (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception
	{
		String s1 = request.getParameter("job_title");
		String s2 = request.getParameter("job_description");
		String s3 = request.getParameter("job_skills");
		String s4 = request.getParameter("job_salary");
		String s5 = request.getParameter("job_address");
		String s6 = request.getParameter("company_name");
		String s7 = request.getParameter("company_email");
		String s8 = request.getParameter("ref_name");
		String s9 = request.getParameter("ref_number");
		String s10 = request.getParameter("ten_per");
		String s11 = request.getParameter("twelve_per");
		String s12 = request.getParameter("graduation");
		String s13 = request.getParameter("app_date");
		String s14 = request.getParameter("inter_date");
		String s15 = request.getParameter("cat");
		String s16 = request.getParameter("subcat");
		String s17 = request.getParameter("country");
		String s18 = request.getParameter("state");
		String s19 = request.getParameter("city");
		
		String s20 = request.getParameter("id");
		
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
		
		Add_cat_vo a = new Add_cat_vo();
		a.setCat_id(Long.valueOf(s15));
		
		Add_sub_cat_vo b = new Add_sub_cat_vo();
		b.setSub_cat_id(Long.valueOf(s16));
		
		Add_country_vo c = new Add_country_vo();
		c.setCountry_id(Long.valueOf(s17));
		
		Add_state_vo d = new Add_state_vo();
		d.setState_id(Long.valueOf(s18));
		
		Add_city_vo e = new Add_city_vo();
		e.setCity_id(Long.valueOf(s19));
		
		Add_job_vo j1 = new Add_job_vo();
		
		j1.setJob_title(s1);
		j1.setJob_description(s2);
		j1.setJob_skills(s3);
		j1.setJob_salary(s4);
		j1.setJob_address(s5);
		j1.setCompany_name(s6);
		j1.setComapny_email(s7);
		j1.setRef_name(s8);
		j1.setRef_number(s9);
		j1.setTen_per(s10);
		j1.setTwelve_per(s11);
		j1.setGraduation(s12);
		j1.setApp_date(s13);
		j1.setInter_date(s14);
		j1.setJob_status(i);
		
		j1.setJob_id(Long.valueOf(s20));
		
		j1.setA(a);
		j1.setB(b);
		j1.setC(c);
		j1.setD(d);
		j1.setE(e);
		
		Add_job_dao j2 = new Add_job_dao();
		j2.update(j1);
		
		searchc(request,response);
		//response.sendRedirect("admin/manage_job.jsp");
	}
	
}
