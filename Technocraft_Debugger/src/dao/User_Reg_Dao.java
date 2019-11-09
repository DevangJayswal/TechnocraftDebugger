package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.User_Reg_Vo;

public class User_Reg_Dao {

	public void reg_insert(User_Reg_Vo v1)
	{
		Session session = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(v1);
			  
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
	public List search(User_Reg_Vo v1)
	{
		Session session = null;
		List l = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from User_Reg_Vo where u_id = '"+v1.getU_id()+"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println(ex.getMessage());
		}
		finally
		{		
			session.close();
		}
		return l;
	}
	
	public List search1()
	{
		Session session = null;
		List l = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from User_Reg_Vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println(ex.getMessage());
		}
		finally
		{		
			session.close();
		}
		return l;
	}
	
	public List usersearch()
	{
		Session session = null;
		List l = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from User_Reg_Vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println(ex.getMessage());
		}
		finally
		{		
			session.close();
		}
		return l;
	}
	
	public void delete(User_Reg_Vo VO_obj){
		
		Session session = null;
		
		 try{
			  
			 session = MyUtility.getSession();// Static Method which makes only one object as method is static
			 
			  Transaction t= session.beginTransaction();

/*			 
 *          Method 1 
 *          Query q = session.createQuery("from AttachmentVO where dID = :dID ");
			  q.setParameter("dID", VO_obj.getdID());
			  AttachmentVO dvo = (AttachmentVO)q.list().get(0);
*/
			
			 /* Method 2 */ 
			  User_Reg_Vo dvo = (User_Reg_Vo)session.get(User_Reg_Vo.class, VO_obj.getU_id());
			 
			  session.delete(dvo);
			
			  t.commit();
			
			  }catch(Exception e){
				  	e.printStackTrace();
				  				//System.out.println(e.getMessage());
			  					}finally{
			  							session.close();
			  
			  							}
	}
	
		public List showAll(){
		
		Session session = null;
		List temp = null;
		  try{
		  
			  session = MyUtility.getSession();// Static Method which makes only one object as method is static
		
			  Query q = session.createQuery("FROM User_Reg_Vo ");
		 
			  temp = q.list();
		  	
		  }catch(Exception e){
			  				  System.out.println(e.getMessage());
		  					 }finally{
		  						     session.close();
		  					 		 }
		 return temp;
		
		}
		
		public List Uprofile(User_Reg_Vo v1)
		{
			List l = null;
			try
			{
				Session session =MyUtility.getSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				  Query a = session.createQuery("from User_Reg_Vo where u_id= '"+v1.getU_id()+"'");
				  
				  l = a.list();
				  
				  tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		}
		
		public void update(User_Reg_Vo uregvo)
		{
			  
			Session session = null;
			
			  try
			  {
				  session = MyUtility.getSession();
			
				  Transaction tr = session.beginTransaction();
			 
				  session.saveOrUpdate(uregvo);
			 
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
  
}

