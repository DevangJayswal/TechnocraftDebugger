package dao;


import lscd.MyUtility;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Exam_Result_vo;

public class Exam_Result_Dao {
	public void insert(Exam_Result_vo resultvo) {
		// TODO Auto-generated method stub
		Session session = null;

		try {
			
			session = MyUtility.getSession();
			
			Transaction tr = session.beginTransaction();
			
			System.out.println("Inserting Record");
			session.save(resultvo);
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		} 
	}	
}
