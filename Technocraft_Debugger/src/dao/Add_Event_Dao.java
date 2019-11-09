package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Add_Event_Vo;


public class Add_Event_Dao {

	public void insert(Add_Event_Vo eventvo) {
		Session s =null;
		try
		{
			s=MyUtility.getSession();
			Transaction tr=s.beginTransaction();
			s.save(eventvo);
			tr.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally{
			s.close();
		}
	}
	
	public List getValue() {
		List ls=null;
		try
		{
			Session s=MyUtility.getSession();

			Query qr=s.createQuery("from Add_Event_Vo");
			
			ls=qr.list();
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return ls;
	}

}
