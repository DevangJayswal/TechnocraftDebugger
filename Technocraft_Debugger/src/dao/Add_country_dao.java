package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Add_country_vo;


public class Add_country_dao {
	
	public void insert(Add_country_vo a1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(a1);
			  
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
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_country_vo");
			  
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
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_country_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List edit(Add_country_vo v)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_country_vo where id = '"+ v.getCountry_id() +"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public void update(Add_country_vo v1)
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
	
	public boolean delete(Add_country_vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		  
			  Transaction tr = session.beginTransaction();
			  
			  Add_country_vo v2 = (Add_country_vo)session.get(Add_country_vo.class, v1.getCountry_id());
			  
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
