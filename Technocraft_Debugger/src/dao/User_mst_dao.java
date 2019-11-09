package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


import vo.user_mst_vo;

public class User_mst_dao {


	List l = null;
	
	public void mst_insert(user_mst_vo usrmst)
	{
		Session session = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(usrmst);
			  
			  tr.commit();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{    
			session.close();
		}
	
	}
	
	public List imageupld(long userID)
	{

		try
		{
				Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  System.out.println("============ ");
			  
			  Query a = session.createQuery("select path from Image_Upload_vo WHERE user_mpg_id = "+userID);
			  
			  l = a.list();
			  
			  System.out.println("size ============ " + l.size());
			  
			  tr.commit();
			 
			  return l;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			
			return l;
		}
		
	}
	
	public List login(user_mst_vo usrmst)
	{

		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from user_mst_vo where user_name like '"+usrmst.getUser_name()+"' and passwd like '"+usrmst.getPasswd()+"'");
			  
			  l = a.list();
			  
			  System.out.println("size = " + l.size());
			  
			  tr.commit();
			 
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List getElementByID(user_mst_vo uservo)
	{
		
		Session session = null;
		List temp = null;
		
		
		try{
			session =MyUtility.getSession();
		
		    Transaction tr = session.beginTransaction();
		 
		    Query q = session.createQuery("FROM user_mst_vo WHERE user_id = '"+ uservo.getUser_id()+"'");
		    temp = q.list();
		
		    tr.commit();
		 
		 }catch(Exception e){
			                 e.printStackTrace();
		  					}finally{
		  							
		  							session.close();
		  
		  							}
		  
		 return temp;
		
			
	}
	
	
	public void update(user_mst_vo umstvo)
	{
		  
		Session session = null;
		
		  try
		  {
			  session = MyUtility.getSession();
		
			  Transaction tr = session.beginTransaction();
		 
			  session.saveOrUpdate(umstvo);
		 
			  tr.commit();
		 
		  }
		  catch(Exception e)
		  {
			  	e.printStackTrace();
		  }
		  finally
		  {	
			  session.close();
		  }
		  
	}
	
	
	public List getElementByUserNameAndPassword(user_mst_vo uservo){

		Session session = null;
		List temp = null;
		
		
		try{
			session =MyUtility.getSession();
		
		    Transaction tr = session.beginTransaction();
		 
		    Query q = session.createQuery("FROM user_mst_vo WHERE user_name = '"+uservo.getUser_name()+"' AND passwd ='"+uservo.getPasswd()+"' ");
		    temp = q.list();
		
		    tr.commit();
		 
		 }catch(Exception e){
			                 e.printStackTrace();
		  					}finally{
		  							
		  							session.close();
		  
		  							}
		  
		 return temp;
		
	}
	
	public List checkEmail(user_mst_vo uservo){

		Session session = null;
		List temp = null;
		
		
		try{
			session =MyUtility.getSession();
		
		    Transaction tr = session.beginTransaction();
		 
		    Query q = session.createQuery("FROM user_mst_vo WHERE u_email = '"+uservo.getU_email()+"'");
		    temp = q.list();
		
		    tr.commit();
		 
		 }catch(Exception e){
			                 e.printStackTrace();
		  					}finally{
		  							
		  							session.close();
		  
		  							}
		  
		 return temp;
		
		
	
	}
	
		public List showAll()
		{
		
				Session session = null;
				List temp = null;
				  try{
					  session =MyUtility.getSession();
				
					  Query q = session.createQuery("FROM user_mst_vo ");
				 
					  temp = q.list();
				  	
				  }
				  catch(Exception e)
				  {
					 e.printStackTrace();
				  }
				  finally
				  {	
					  session.close();
				  }
				 return temp;
		}
		
		public void delete(user_mst_vo uservo)
		{			
			Session session = null;
			
			 try{
				  session =MyUtility.getSession();
				  Transaction t= session.beginTransaction();

				  
				  user_mst_vo user_mst_vo = (user_mst_vo)session.get(user_mst_vo.class, uservo.getUser_id());
				  
				  session.delete(user_mst_vo);
				
				  t.commit();
				
				
				  }catch(Exception e){
					  	
					  				e.printStackTrace();
				  					}
			 finally
			 {
				  	session.close();
				  
			 }				  
			
		}
		
		public List status(user_mst_vo uservo)
		{
			List l = null;
			try
			{
				 	Session session =MyUtility.getSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				  Query a = session.createQuery("from user_mst_vo where user_id='"+ uservo.getUser_id()+"'");
				  
				  l = a.list();
				  
				  tr.commit();
				  
				  session.close();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		}
		
		public List userlist(user_mst_vo uservo)
		{
			List l = null;
			try
			{
				Session session =MyUtility.getSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				  Query a = session.createQuery("from user_mst_vo where user_id is '"+uservo.getUser_id()+"'");
				  
				  l = a.list();
				  
				  tr.commit();
				  
				  session.close();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		}
		
		public List load()
		{
			List l = null;
			try
			{
				 Session session =MyUtility.getSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				  Query a = session.createQuery("from user_mst_vo");
				  
				  l = a.list();
				  
				  tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		}



}
