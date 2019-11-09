package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;

import dao.Add_questions_dao;

import vo.Add_cat_vo;
import vo.Add_exam_vo;
import vo.Add_questions_vo;
import vo.Add_sub_cat_vo;
import vo.user_mst_vo;


/**
 * Servlet implementation class Import_Question_Controller
 */
@WebServlet("/Import_Question_Controller")
public class Import_Question_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Import_Question_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// TODO Auto-generated method stub
				// mode=0 Add New
				//mode=1 Insert
				//mode=2 Edit
				//mode=3 update
				//mode=4 Delete
				//mode=5 Show 		
				
				//Mode Type defined to String to control over illegal parameter passing through URL
				String mode="0";
				 
				//Getting the mode variable, if not than default to 0(zero)  
				if(request.getParameter("mode")!=null)
				   mode = request.getParameter("mode");
				else
					mode="0";
				
				
				if(mode.equals("2")){
					edit(request, response);
				}
				else if(mode.equals("4")) {
					delete(request, response);
					
				}else if(mode.equals("5")){
					show(request, response);
				}else{
					//default Add
					response.sendRedirect(request.getContextPath()+"/admin/upload_question.jsp");
				}
				
	}
	void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_questions_dao c = new Add_questions_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("admin/manage_questions.jsp");
	}
	
	void searchc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Add_questions_dao c = new Add_questions_dao();
		List ls = c.search();
		
		HttpSession s = request.getSession();
		s.setAttribute("list", ls);
		response.sendRedirect("Company/manage_questions.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// mode=0 Add New
				//mode=1 Insert
				//mode=2 Edit
				//mode=3 update
				//mode=4 Delete
				//mode=5 Show 
				//Mode Type defined to String to control over illegal parameter passing through URL
				 String mode="0";
				 String usertype =  request.getParameter("user");
				//Getting the mode variable, if not than default to 0(zero) 
				if(request.getParameter("mode")!=null)
					   mode = request.getParameter("mode");
					else
						doGet(request, response);
					
					
					if(mode.equals("1")&&usertype.equals("Admin")){
						       insert(request, response);
					}
					else if(mode.equals("1")&&usertype.equals("company")){
					       insertc(request, response);
					}
					else if(mode.equals("3")){
								update(request, response);
					}else{//default Add
								response.sendRedirect("/admin/upload_question.jsp");
								}//default
			
			}
			
			
			protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
			{
				HttpSession usersession = request.getSession();
				long u = (long)usersession.getAttribute("userID");
				user_mst_vo u1 = new user_mst_vo();
				u1.setUser_id(u);
				
				String cat = request.getParameter("Cat");
				String subcat = request.getParameter("Sub_Cat");
				String exam= request.getParameter("Exam");
				
				List ls=null;
				
				Add_cat_vo catvo = new Add_cat_vo();
				catvo.setCat_id(Long.valueOf(cat));
				
				Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
				subcatvo.setSub_cat_id(Long.valueOf(subcat));
				
				Add_exam_vo examvo = new Add_exam_vo();
				examvo.setExam_id(Long.valueOf(Long.valueOf(exam)));
				
				Add_questions_vo VO_obj =new Add_questions_vo();
				Add_questions_dao DAO_obj=new Add_questions_dao();
				
				   /*Below code is to fetch the list of upload file name's */
			      /*Begin*/
			      HttpSession session = request.getSession();
			      List myFileList = (List) session.getAttribute("fileList");
			      
			      Iterator itr =  myFileList.iterator();
			      
			      System.out.println("Fetching file Names from session :");
			      
			      String filePath = getServletContext().getRealPath(request.getServletPath());
				   Integer path = filePath.lastIndexOf('\\');
				   String path1= filePath.substring(0, path) +"\\admin\\doc\\";
				   
				  while (itr.hasNext()) 
				  {     
					  System.out.println("inside while"+path);
					  FileInputStream input = new FileInputStream(path1.concat((String)itr.next()));  
					  POIFSFileSystem fs = new POIFSFileSystem(input);  
					  HSSFWorkbook wb = new HSSFWorkbook(fs);
					  HSSFSheet sheet = wb.getSheetAt(0);
					  System.out.println("xyz"+sheet);
					  Row row;  
					  for(int i=1; i<=sheet.getLastRowNum(); i++)
					  {
						  //System.out.println("inside for"+i);
						  ls=null;
						  row = sheet.getRow(i);  
		                 
						  String question = row.getCell(0).getStringCellValue();
						  String option1 = row.getCell(1).getStringCellValue();
						  String option2 = row.getCell(2).getStringCellValue();
						  String option3 = row.getCell(3).getStringCellValue();
						  String option4 = row.getCell(4).getStringCellValue();
						  String correctans = row.getCell(5).getStringCellValue();
						  double marks1 = row.getCell(6).getNumericCellValue();
						  
						  Integer marks = (int) marks1;
						  
						  VO_obj.setQuestion(question);
						  VO_obj.setAns1(option1);
						  VO_obj.setAns2(option2);
						  VO_obj.setAns3(option3);
						  VO_obj.setAns4(option4);
						  VO_obj.setCorrect_ans(correctans);
						  VO_obj.setQuestion_marks(marks);
						  VO_obj.setV1(catvo);
						  VO_obj.setV2(subcatvo);
						  VO_obj.setV3(examvo);
						  VO_obj.setUsrid(u1);
		           	
						  ls=DAO_obj.getElemetByName(VO_obj);
						  //System.out.println(ls+" "+question);
						  if(ls.isEmpty())
						  {
							  DAO_obj.insert(VO_obj);
						  }  
					  }  
				  }
				  session.removeAttribute("fileList");
				
				search(request, response);
				
			}
			
			protected void insertc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
			{
				HttpSession usersession = request.getSession();
				long u = (long)usersession.getAttribute("userID");
				user_mst_vo u1 = new user_mst_vo();
				u1.setUser_id(u);
				
				String cat = request.getParameter("Cat");
				String subcat = request.getParameter("Sub_Cat");
				String exam= request.getParameter("Exam");
				
				List ls=null;
				
				Add_cat_vo catvo = new Add_cat_vo();
				catvo.setCat_id(Long.valueOf(cat));
				
				Add_sub_cat_vo subcatvo = new Add_sub_cat_vo();
				subcatvo.setSub_cat_id(Long.valueOf(subcat));
				
				Add_exam_vo examvo = new Add_exam_vo();
				examvo.setExam_id(Long.valueOf(Long.valueOf(exam)));
				
				Add_questions_vo VO_obj =new Add_questions_vo();
				Add_questions_dao DAO_obj=new Add_questions_dao();
				
				   /*Below code is to fetch the list of upload file name's */
			      /*Begin*/
			      HttpSession session = request.getSession();
			      List myFileList = (List) session.getAttribute("fileList");
			      
			      Iterator itr =  myFileList.iterator();
			      
			      System.out.println("Fetching file Names from session :");
			      
			      String filePath = getServletContext().getRealPath(request.getServletPath());
				   Integer path = filePath.lastIndexOf('\\');
				   String path1= filePath.substring(0, path) +"\\admin\\doc\\";
				   
				  while (itr.hasNext()) 
				  {     
					  System.out.println("inside while"+path);
					  FileInputStream input = new FileInputStream(path1.concat((String)itr.next()));  
					  POIFSFileSystem fs = new POIFSFileSystem(input);  
					  HSSFWorkbook wb = new HSSFWorkbook(fs);
					  HSSFSheet sheet = wb.getSheetAt(0);
					  System.out.println("xyz"+sheet);
					  Row row;  
					  for(int i=1; i<=sheet.getLastRowNum(); i++)
					  {
						  //System.out.println("inside for"+i);
						  ls=null;
						  row = sheet.getRow(i);  
		                 
						  String question = row.getCell(0).getStringCellValue();
						  String option1 = row.getCell(1).getStringCellValue();
						  String option2 = row.getCell(2).getStringCellValue();
						  String option3 = row.getCell(3).getStringCellValue();
						  String option4 = row.getCell(4).getStringCellValue();
						  String correctans = row.getCell(5).getStringCellValue();
						  double marks1 = row.getCell(6).getNumericCellValue();
						  
						  Integer marks = (int) marks1;
						  
						  VO_obj.setQuestion(question);
						  VO_obj.setAns1(option1);
						  VO_obj.setAns2(option2);
						  VO_obj.setAns3(option3);
						  VO_obj.setAns4(option4);
						  VO_obj.setCorrect_ans(correctans);
						  VO_obj.setQuestion_marks(marks);
						  VO_obj.setV1(catvo);
						  VO_obj.setV2(subcatvo);
						  VO_obj.setV3(examvo);
						  VO_obj.setUsrid(u1);
		           	
						  ls=DAO_obj.getElemetByName(VO_obj);
						  //System.out.println(ls+" "+question);
						  if(ls.isEmpty())
						  {
							  DAO_obj.insert(VO_obj);
						  }  
					  }  
				  }
				  session.removeAttribute("fileList");
				
				searchc(request, response);
				
			}
			
		    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    	
				String DepartmentName = request.getParameter("departmentName");
				int DepartmentID=Integer.parseInt(request.getParameter("departmentID"));
				
				
				Add_questions_vo VO_obj =new Add_questions_vo();
				
				VO_obj.setQuestion_id(DepartmentID);
				VO_obj.setQuestion(DepartmentName);

				
				
				
				
				Add_questions_dao DAO_obj=new Add_questions_dao();
				DAO_obj.update(VO_obj);
				
				show(request, response);
			}
		    
		    protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    	
		    	int DepartmentID=Integer.parseInt(request.getParameter("id"));
		    	Add_questions_vo VO_obj =new Add_questions_vo();
				VO_obj.setQuestion_id(DepartmentID);
				
				Add_questions_dao DAO_obj=new Add_questions_dao();
				List obj= DAO_obj.getElementByID(VO_obj);
				
				HttpSession session = request.getSession();
				session.setAttribute("obj", obj);
				response.sendRedirect(request.getContextPath()+"/editDepartment.jsp");
			}
		    
		    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    	
		    	int DepartmentID=Integer.parseInt(request.getParameter("id"));
		    		
		    	Add_questions_vo VO_obj =new Add_questions_vo();
				VO_obj.setQuestion_id(DepartmentID);
				
				/* Method 1 
				
				EmployeeVO empVO = new EmployeeVO();
				empVO.setDepartmentID(VO_obj);
				
				EmployeeDAO empDAO = new EmployeeDAO();
				empDAO.deleteCustom(empVO);
				
				
				DepartmentDAO DAO_obj=new DepartmentDAO();
				DAO_obj.delete(VO_obj);
				
				*/
				
				/*Method 2 */
				
				Add_questions_dao DAO_obj=new Add_questions_dao();
				DAO_obj.delete(VO_obj);
				
				
				show(request, response);
				
				
			}
		    protected void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    	Add_questions_dao DAO_obj=new Add_questions_dao();
				List obj= DAO_obj.showAll();
				
				HttpSession session = request.getSession();
				session.setAttribute("obj_all", obj);
				response.sendRedirect(request.getContextPath()+"/admin/manage_questions.jsp");
			
			}

		
	}


