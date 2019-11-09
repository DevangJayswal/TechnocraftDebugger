	package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.LinkVo;;

public class LinkDao {

public void insert(LinkVo linkvo){
		
		Session session = null;
		
		 try
		 {
			 session =MyUtility.getSession();
			 
			  
			  Transaction t= session.beginTransaction();
			
			  session.save(linkvo);
			  
			  t.commit();		
			
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

	public List getElementByLink(LinkVo linkvo)
	{
	
		Session session = null;
		List temp = null;
		
	
			try
			{
				session =MyUtility.getSession();
			
			    Transaction tr = session.beginTransaction();
			 
			    Query q = session.createQuery("FROM LinkVo WHERE link = '"+linkvo.getLink()+"' ");
			    temp = q.list();
			
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
			  
			System.out.println(temp);
			 return temp;		
	}
	
	public void update(LinkVo linkvo)
	{
		  
			Session session = null;
			
			  try{
				  session =MyUtility.getSession();
			
				  Transaction tr = session.beginTransaction();
			 
				  session.update(linkvo);
			 
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