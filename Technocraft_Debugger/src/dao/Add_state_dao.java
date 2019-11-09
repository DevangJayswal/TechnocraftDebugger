package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Add_state_vo;
public class Add_state_dao {

	public void insert(Add_state_vo st1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(st1);
			  
			  tr.commit();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public List load()
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_state_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List search()
	{
		List l = null;
		try
		{  
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_state_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List edit(Add_state_vo v)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_state_vo where id = '"+ v.getState_id() +"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public void update(Add_state_vo v1)
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
	public boolean delete(Add_state_vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			  Add_state_vo v2 = (Add_state_vo)session.get(Add_state_vo.class, v1.getState_id());
			  
			  session.delete(v2);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			String []s = ex.getCause()!=null?ex.getCause().toString().split(":"):null;
			
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
