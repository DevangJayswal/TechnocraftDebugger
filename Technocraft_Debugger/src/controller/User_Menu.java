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

import dao.Add_cat_dao;
import dao.Add_exam_dao;
import dao.Add_job_dao;
import dao.Add_package_dao;
import dao.Add_sub_cat_dao;
import dao.Company_Reg_Dao;

import vo.Add_cat_vo;
import vo.Add_exam_vo;
import vo.Add_job_vo;
import vo.Add_package_vo;
import vo.Add_sub_cat_vo;
import vo.Company_Reg_Vo;

/**
 * Servlet implementation class User_Menu
 */
@WebServlet("/User_Menu")
public class User_Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Menu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		load(request,response);
	}
	private void load (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List catls = new ArrayList();
		Add_cat_vo catvo = new Add_cat_vo();
		Add_cat_dao catdao = new Add_cat_dao();
		catls = catdao.load(catvo);
		
		List subcatls = new ArrayList();
		Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
		Add_sub_cat_dao subcatdao = new Add_sub_cat_dao();
		subcatls = subcatdao.load(subcatvo);
		
		List jobls = new ArrayList();
		Add_job_vo jobvo = new Add_job_vo();
		Add_job_dao jobdao = new Add_job_dao();
		jobls = jobdao.load_job(jobvo);
		
		List examls = new ArrayList();
		Add_exam_vo examvo = new Add_exam_vo();
		Add_exam_dao examdao = new Add_exam_dao();
		examls = examdao.load_exam(examvo);
		
		List packagels = new ArrayList();
		Add_package_vo packagevo = new Add_package_vo();
		Add_package_dao packagedao = new Add_package_dao();
		packagels = packagedao.load(packagevo);
		
		List CompanyRegls = new ArrayList();
		Company_Reg_Vo CompanyRegVo = new Company_Reg_Vo();
		Company_Reg_Dao CompanyRegDao = new Company_Reg_Dao();
		CompanyRegls = CompanyRegDao.load(CompanyRegVo);
		
		System.out.println("Vo done");
		
		HttpSession session = request.getSession();
		session.setAttribute("category", catls);
		session.setAttribute("subcategory", subcatls);
		session.setAttribute("job", jobls);
		session.setAttribute("exam", examls);
		session.setAttribute("package1", packagels);
		session.setAttribute("CompanyReg", CompanyRegls);
		System.out.println("done");
		
		
		response.sendRedirect("User/user_index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
