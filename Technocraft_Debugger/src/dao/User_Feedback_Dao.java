package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.User_Feedback_Vo;

public class User_Feedback_Dao {
	
	public void insert(User_Feedback_Vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(v1);
			  
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
			  
			  Query a = session.createQuery("from User_Feedback_Vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public boolean delete(User_Feedback_Vo v1)
	{
		try
		{
				Session session = MyUtility.getSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			  User_Feedback_Vo v2 = (User_Feedback_Vo)session.get(User_Feedback_Vo.class, v1.getFb_id());
			  
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
}
