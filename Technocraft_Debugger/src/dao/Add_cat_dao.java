package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Add_cat_vo;

public class Add_cat_dao {
	public void insert(Add_cat_vo r1)
	{
		try
		{	  
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(r1);
			  
			  tr.commit();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}
	public List load(Add_cat_vo catvo)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_cat_vo");
			  
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
			  
			  Query a = session.createQuery("from Add_cat_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	public List edit(Add_cat_vo v)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_cat_vo where id = '"+ v.getCat_id() +"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public void update(Add_cat_vo v1)
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
	
	public boolean delete(Add_cat_vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			  Add_cat_vo v2 = (Add_cat_vo)session.get(Add_cat_vo.class, v1.getCat_id());
			  
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
