package dao;
import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Company_Reg_Vo;

public class Company_Reg_Dao {

	public void insert(Company_Reg_Vo cvo)
	{
		Session session = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(cvo);
			  
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
	
	public void update(Company_Reg_Vo uregvo)
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
	
	public List usersearch()
	{
		Session session = null;
		List l = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Company_Reg_Vo");
			  
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
	
	
	public List load(Company_Reg_Vo CompanyRegVo)
	{
		List l = null;
		try
		{
			  Session session =MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Company_Reg_Vo");
			  
			  l = a.list();
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search(Company_Reg_Vo v1)
	{
		Session session = null;
		List l = null;
		try
		{
			  session = MyUtility.getSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  Query a = session.createQuery("from Company_Reg_Vo where u_id = '"+v1.getC_id()+"'");
			  
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
			  
			  Query a = session.createQuery("from Company_Reg_Vo");
			  
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
	
	
}
