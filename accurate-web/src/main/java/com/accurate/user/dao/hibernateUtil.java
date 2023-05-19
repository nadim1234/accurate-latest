package com.accurate.user.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class hibernateUtil extends HibernateDaoSupport {
	
	public Session createSession() throws HibernateException{
		return getHibernateTemplate().getSessionFactory().openSession();
	}
	
	public Session getCreatedSession() throws HibernateException{
		return getHibernateTemplate().getSessionFactory().getCurrentSession();
	}
}
