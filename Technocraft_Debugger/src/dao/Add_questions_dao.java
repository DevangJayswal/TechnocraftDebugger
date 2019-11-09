package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import lscd.MyUtility;

import vo.Add_questions_vo;

public class Add_questions_dao {

	public void insert(Add_questions_vo qs1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(qs1);
			  
			  tr.commit();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public List search()
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_questions_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List giveexam(Add_questions_vo quevo)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_questions_vo where v3='"+quevo.getV3().getExam_id()+"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List checkAns(Long v) {
		Session session = null;
		List ls=null;
	  try{
	        session =MyUtility.getSession();
	        
	        org.hibernate.Transaction tr=session.beginTransaction();
	        
	        System.out.println("editing Record");
	        
	        Query q=session.createQuery("from Add_questions_vo where question_id="+v);
	        
	        ls=q.list();
	     
	        tr.commit();
	        System.out.println("Done");
	  }
	  

	  
	  catch(Exception e){
	 e.printStackTrace();
	  }
	return ls;
	}
	
	public List load()
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_questions_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List edit(Add_questions_vo v)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_questions_vo where id = '"+ v.getQuestion_id() +"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public void update(Add_questions_vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.saveOrUpdate(v1);
			  
			  tr.commit();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public boolean delete(Add_questions_vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			  Add_questions_vo v2 = (Add_questions_vo)session.get(Add_questions_vo.class, v1.getQuestion_id());
			  
			  session.delete(v2);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			String []s =ex.getCause()!=null?ex.getCause().toString().split(":"):null;
			
			if(s!=null && s[0].equals("java.sql.BatchUpdateException"))
			{
				return false;
			}
			ex.printStackTrace();
		}
		finally
		{
			//session.close();
		}
		return true;

	}
	
public List getElementByID(Add_questions_vo VO_obj){
		
		Session session = null;
		List temp = null;
		
		
		try{
		  
			session = MyUtility.getSession();// Static Method which makes only one object as method is static
		
		    Transaction tr = session.beginTransaction();
		 
		    Query q = session.createQuery("FROM Add_questions_vo WHERE question_id = '"+VO_obj.getQuestion_id()+"'");
		    temp = q.list();
		
		    tr.commit();
		 
		 }catch(Exception e){
			                 System.out.println(e.getMessage());
		  					}finally{
		  							
		  							session.close();
		  
		  							}
		  
		 return temp;
		
	}

	public List getElemetByName(Add_questions_vo VO){
	
	Session session = null;
	List temp = null;
	  try{
	  
		  session = MyUtility.getSession();// Static Method which makes only one object as method is static
	
		  Query q = session.createQuery("FROM Add_questions_vo where question = '"+VO.getQuestion()+"' ");
	 
		  temp = q.list();
	  	
	  }catch(Exception e){
		  				  System.out.println(e.getMessage());
	  					 }finally{
	  						     session.close();
	  					 		 }
	 return temp;
	
	}	
	
	 public List showAll(){
			
			Session session = null;
			List temp = null;
			  try{
			  
				  session = MyUtility.getSession();// Static Method which makes only one object as method is static
			
				  Query q = session.createQuery("FROM Add_questions_vo ");
			 
				  temp = q.list();
			  	
			  }catch(Exception e){
				  				  System.out.println(e.getMessage());
			  					 }finally{
			  						     session.close();
			  					 		 }
			 return temp;
			
			}	
	
}
