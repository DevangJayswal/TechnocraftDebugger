package dao;

import lscd.MyUtility;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Job_Apply_vo;

public class Apply_Dao {
	
	public void insert(Job_Apply_vo Applyvo)
	{
		Session session = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(Applyvo);
			  
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

}
