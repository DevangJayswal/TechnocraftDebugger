package lscd;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.User_mst_dao;
import vo.user_mst_vo;

public class MyUtility {

	public static void main(String[] args) {

		String userName = "devang";
		String password = "devang";

		user_mst_vo uservo = new user_mst_vo();
		uservo.setUser_name(userName);
		uservo.setPasswd(password);

		User_mst_dao userdao = new User_mst_dao();

		List ls = userdao.login(uservo);
		
//		user_mst_vo umv = new user_mst_vo();
		
		

//		MyUtility.login(usrmst);

	}

	public static Session getSession() {

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();

		return session;
	}

	public static List login(user_mst_vo usrmst) {

		List l = null;
		try {
			Session session = MyUtility.getSession();

			Transaction tr = session.beginTransaction();

			Query a = session.createQuery("from user_mst_vo where user_name like '" + usrmst.getUser_name()
					+ "' and passwd like '" + usrmst.getPasswd() + "'");

			l = a.list();

			System.out.println("size = " + l.size());

			tr.commit();

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return l;
	}

}
