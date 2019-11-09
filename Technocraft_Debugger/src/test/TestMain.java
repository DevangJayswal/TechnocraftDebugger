package test;

import java.util.Date;

import org.hibernate.Session;

import test.User;

import test.HibernateUtil;

public class TestMain {

	public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		User user = new User();

		user.setUserId(8);
		user.setUsername("Mukesh");
		user.setCreatedBy("Google");
		user.setCreatedDate(new Date());

		session.save(user);
		session.getTransaction().commit();

	}

}
