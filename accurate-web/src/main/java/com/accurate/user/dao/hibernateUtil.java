package com.accurate.user.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class hibernateUtil {
	private HibernateTemplate hibernateTemplate;
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public Session createSession() throws HibernateException{
		return getHibernateTemplate().getSessionFactory().openSession();
	}
	
	public Session getCreatedSession() throws HibernateException{
		return getHibernateTemplate().getSessionFactory().getCurrentSession();
	}
}
