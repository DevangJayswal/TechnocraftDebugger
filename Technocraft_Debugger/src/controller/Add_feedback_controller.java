package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.sql.Update;

import dao.Add_cat_dao;
import dao.Add_exam_dao;
import dao.Add_feedback_dao;

import vo.Add_cat_vo;
import vo.Add_feedback_vo;

/**
 * Servlet implementation class Add_feedback_controller
 */
@WebServlet("/Add_feedback_controller")
public class Add_feedback_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_feedback_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String S = request.getParameter("flag");
		System.out.println(S);
		
		if(S.equals("search"))
		{
			search(request,response);
		}
		
		else if(S.equals("edit"))
		{
			edit(request, response);
		}
		
		else if(S.equals("delete"))
		{
			delete(request, response);
		}
	}
	
	void search (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_feedback_dao c = new Add_feedback_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_feedback.jsp");
	}
	
	void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String S1 = request.getParameter("id");
		
		Add_feedback_vo v = new Add_feedback_vo();
		v.setFb_id(Long.valueOf(S1));
		
		Add_feedback_dao d = new Add_feedback_dao();
		List ls = d.edit(v);
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/edit_feedback.jsp");
	}

	void delete (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String del = request.getParameter("id");
			
			Add_feedback_vo v1 = new Add_feedback_vo();
			v1.setFb_id(Long.valueOf(del));
			
			HttpSession session = request.getSession();
			Add_feedback_dao d1 = new Add_feedback_dao();
			if(!d1.delete(v1))
			{
				session.setAttribute("deleteflag", "Delete All The Record First !");
			}
			
			search(request,response);
			//response.sendRedirect("admin/manage_feedback.jsp");
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
		if(p1!=null && p1.equals("insert"))
		{
			insert(request,response);
		}
		
		else if(p1.equals("update"))
		{
			update(request, response);
		}
	}
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("fb_username");
		String s2 = request.getParameter("fb_msg");
		
		Add_feedback_vo f1 =  new Add_feedback_vo();
		f1.setFb_username(s1);
		f1.setFb_msg(s2);
		
		Add_feedback_dao f2 = new Add_feedback_dao();
		f2.insert(f1);
		
		response.sendRedirect("admin/add_feedback.jsp");
	}

	void update (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s1 = request.getParameter("fb_username");
		String s2 = request.getParameter("fb_msg");
		String s3 = request.getParameter("id");
		
		Add_feedback_vo f1 =  new Add_feedback_vo();
		f1.setFb_username(s1);
		f1.setFb_msg(s2);
		f1.setFb_id(Long.valueOf(s3));
		
		Add_feedback_dao f2 = new Add_feedback_dao();
		f2.update(f1);
		
		search(request,response);
		//response.sendRedirect("admin/manage_feedback.jsp");
	}
}
