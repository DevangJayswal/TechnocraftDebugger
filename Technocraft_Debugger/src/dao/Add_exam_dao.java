package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import java.util.*;

import lscd.MyUtility;

import vo.Add_exam_vo;

public class Add_exam_dao {
	
	public void insert(Add_exam_vo e1)
	{
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(e1);
			  
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
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_exam_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List edit(Add_exam_vo v)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_exam_vo where id = '"+ v.getExam_id() +"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List load_exam(Add_exam_vo examvo)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_exam_vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List load_exam1(Add_exam_vo examvo)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_exam_vo where exam_id='"+ examvo.getExam_id()+"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List load_exam2(Add_exam_vo examvo)
	{
		List l = null;
		try
		{
			  Session session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_exam_vo where v2.sub_cat_id='"+ examvo.getV2().getSub_cat_id()+"'");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public void update(Add_exam_vo v1)
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
	
	public boolean delete(Add_exam_vo v1)
	{
		try
		{
			  Session session = MyUtility.getSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			  Add_exam_vo v2 = (Add_exam_vo)session.get(Add_exam_vo.class, v1.getExam_id());
			  
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
	
	public List examlist(Add_exam_vo examvo)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Add_exam_vo where exam_id='"+ examvo.getExam_id()+"'");
			  
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
