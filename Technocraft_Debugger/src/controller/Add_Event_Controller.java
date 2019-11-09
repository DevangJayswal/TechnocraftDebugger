package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Add_Event_Dao;

import vo.Add_Event_Vo;

/**
 * Servlet implementation class Add_Event_Controller
 */
@WebServlet("/Add_Event_Controller")
public class Add_Event_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Event_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String S = request.getParameter("flag");
		if(S.equals("load"))
		{
			load(request,response);
		}
	}
	
	void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_Event_Dao eventdao = new Add_Event_Dao();
		HttpSession session = request.getSession();
		
		List eventlist = eventdao.getValue();
		session.setAttribute("eventlist", eventlist);
		System.out.println(eventlist.size());
		
		response.sendRedirect("admin/index.jsp");
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
	}
	void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String event_name = request.getParameter("event_name");
		String event_desc = request.getParameter("event_desc");
		String event_time = request.getParameter("event_time");
		String eventdate = request.getParameter("event_date");
		
		SimpleDateFormat edate = new SimpleDateFormat("MM/dd/yyyy");
		
		Date dt1 = null;
		try {
			dt1 = edate.parse(eventdate);
			System.out.println("inside try");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("try complete");
		Add_Event_Vo eventvo = new Add_Event_Vo();
		eventvo.setEvent_name(event_name);
		eventvo.setEvent_desc(event_desc);
		eventvo.setEvent_time(event_time);
		eventvo.setEvent_date(dt1);
		
		Add_Event_Dao eventdao = new Add_Event_Dao();
		eventdao.insert(eventvo);
	
		response.sendRedirect("admin/index.jsp");
		//load(request,response);
	}

}
