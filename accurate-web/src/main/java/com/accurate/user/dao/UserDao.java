package com.accurate.user.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.domainobj.User;

public class UserDao {
	
	private User user;
	
	private hibernateUtil hibernateUtl;
	
	
	
	public hibernateUtil getHibernateUtl() {
		return hibernateUtl;
	}



	public void setHibernateUtl(hibernateUtil hibernateUtl) {
		this.hibernateUtl = hibernateUtl;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public User findUser() {
		Session session=hibernateUtl.createSession();
		
		SQLQuery query=session.createSQLQuery("select * from profile_data");
		
		List l=query.list();
		if(session.isOpen()) {
			session.close();
		}
		Object[] o=(Object[])l.get(0);
		user.setName(o[0].toString());
		return user;
	}
	
}
