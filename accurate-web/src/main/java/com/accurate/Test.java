package com.accurate;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.accurate.user.action.UserAction;
import com.domainobj.User;


public class Test {
	static Logger logger=Logger.getLogger(Test.class);
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
		
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		Session session=ht.getSessionFactory().openSession();
		
		SQLQuery query=session.createSQLQuery("select * from profile_data");
		
		List l=query.list();
		Object[] o=(Object[])l.get(0);
		
		System.out.print("name:"+o[1]);
		
//		UserAction u=(UserAction)ctx.getBean("userAction");
//		System.out.print(u.getUserService().getUserDao().findUser().getName());
		// TODO Auto-generated method stub
//		Demo d=new Demo();
	}

}
