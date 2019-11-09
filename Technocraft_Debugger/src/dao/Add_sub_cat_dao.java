package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


import vo.Add_sub_cat_vo;

public class Add_sub_cat_dao {

	public void insert(Add_sub_cat_vo sbc1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(sbc1);
			  
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
			  
			  Query a = session.createQuery("from Add_sub_cat_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List load(Add_sub_cat_vo subcatvo)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_sub_cat_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List load_subcat(Add_sub_cat_vo subcatvo)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_sub_cat_vo where sub_cat_id='"+ subcatvo.getSub_cat_id()+"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List edit(Add_sub_cat_vo v)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_sub_cat_vo where id = '"+ v.getSub_cat_id() +"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public void update(Add_sub_cat_vo v1)
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
	
	public boolean delete(Add_sub_cat_vo v1)
	{
		Session session = null;
		try
		{
			System.out.println("inside delete");
			 
			  session = MyUtility.getSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			  Add_sub_cat_vo v2 = (Add_sub_cat_vo)session.get(Add_sub_cat_vo.class, v1.getSub_cat_id());
					  
			  System.out.println("after delete");
			  session.delete(v2);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			System.out.println("inside catch");
			String s[] = ex.getCause()!=null?ex.getCause().toString().split(":"):null;
			if(s!=null && s[0].equals("java.sql.BatchUpdateException"))
			{
				return false;
			}
		}
		
		finally
		{
			//session.close();
		}
		
		return true;
	}
}
