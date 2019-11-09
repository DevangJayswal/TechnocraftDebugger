package Auth;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import dao.Add_cat_dao;
import dao.Add_exam_dao;
import dao.Add_job_dao;
import dao.Add_package_dao;
import dao.Add_sub_cat_dao;
import dao.Company_Reg_Dao;
import dao.User_Reg_Dao;
import dao.User_mst_dao;

import vo.Add_cat_vo;
import vo.Add_exam_vo;
import vo.Add_job_vo;
import vo.Add_package_vo;
import vo.Add_sub_cat_vo;
import vo.Company_Reg_Vo;
import vo.Image_Upload_vo;
import vo.User_Reg_Vo;
import vo.user_mst_vo;

/**
 * Servlet Filter implementation class login
 */

@WebFilter("/*")
public class login implements Filter {

	/**
	 * Default constructor.
	 */
	public login() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		System.out.println("Authentication Verification begins");
		HttpSession session = ((HttpServletRequest) request).getSession();

		/* Check whether the User has requested to submit User name and Password */

		String uri = ((HttpServletRequest) request).getRequestURI();
		String flag = request.getParameter("flag");

		if (uri.contains("font") || uri.contains("css") || uri.contains("js") && !uri.contains("jsp")
				|| uri.contains("images") || uri.contains("user_index.jsp") || uri.contains("User_Menu")
				|| uri.contains("Company_Reg_Controller") || uri.contains("User_Reg_Controller")
				|| uri.contains("Company_Registration.jsp") || uri.contains("page_register_user.jsp")
				|| uri.contains("image_upload.jsp") || uri.contains("ImageUploadServlet")) {
			System.out.println("if block................................");
			chain.doFilter(request, response);

		}

		else if (request.getParameter("login") != null && request.getParameter("login").equals("true")) {

			System.out.println("aaaaaaaaaaaaaaaaaaaaaaas");
			String userName = request.getParameter("username");
			String password = request.getParameter("password");

			// for login page
			session.setAttribute("uName", userName);

			user_mst_vo uservo = new user_mst_vo();
			uservo.setUser_name(userName);
			uservo.setPasswd(password);

			User_mst_dao userdao = new User_mst_dao();

			List ls = userdao.login(uservo);

			long uid = uservo.getUser_id();

			System.out.println("Login --> uid --> " + uid);
			// List image = null;

			// se/ssion.setAttribute("image", image1);

			System.out.println("in if");
			RequestDispatcher rd;

			/* Check for authentic user */

			if (ls != null && ls.size() >= 1) {
				System.out.println("in if");

				Iterator itr = ls.iterator();

				user_mst_vo uservo1 = (user_mst_vo) itr.next();
				session.setAttribute("userID", uservo1.getUser_id());
				session.setAttribute("usertype", uservo1.getUser_type());

				long userID1 = uservo1.getUser_id();

				System.out.println("USERid: " + userID1);

				if (userID1 != 2) {
					List image = userdao.imageupld(userID1);

					String ob = image.get(0).toString();

					System.out.println("image = " + ob);

					session.setAttribute("image", ob);
				}

				if (uservo1.getUser_type() != null && uservo1.getUser_type().equals("user")) {
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

					session.setAttribute("category", catls);
					session.setAttribute("subcategory", subcatls);
					session.setAttribute("job", jobls);
					session.setAttribute("exam", examls);
					session.setAttribute("package1", packagels);
					session.setAttribute("CompanyReg", CompanyRegls);

					rd = request.getRequestDispatcher("/User/user_index.jsp");
					rd.forward(request, response);

				} else if (uservo1.getUser_type() != null && uservo1.getUser_type().equals("company")) {

					List packls = new ArrayList();
					Add_package_vo packvo = new Add_package_vo();
					Add_package_dao packdao = new Add_package_dao();
					packls = packdao.load(packvo);

					System.out.println("Vo Done");

					session.setAttribute("package1", packls);
					System.out.println("Done");

					rd = request.getRequestDispatcher("/Company/index.jsp");
					rd.forward(request, response);
				} else {
					rd = request.getRequestDispatcher("/admin/index.jsp");
					rd.forward(request, response);

				}

			} else {
				rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);

			}
		} else if (flag != null && flag.equals("logout")) {
			System.out.println("Log Out");
			RequestDispatcher rd;

			session.removeAttribute("userID");
			session.removeAttribute("userName");
			System.out.println("attribute removed");
			session.invalidate();
			rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);

		}

		else if (flag != null && flag.equals("logoutuser")) {
			System.out.println("Log Out");
			RequestDispatcher rd;

			session.removeAttribute("userID");
			session.removeAttribute("userName");
			System.out.println("attribute removed");
			session.invalidate();
			rd = request.getRequestDispatcher("/User_Menu");
			rd.forward(request, response);

		}

		else if (session.getAttribute("userID") != null) {
			System.out.println("user id is" + session.getAttribute("userID"));
			chain.doFilter(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
		System.out.println("Authentication Filter Verification Ends");
		// session.removeAttribute("userID");

		// pass the request along the filter chain

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
