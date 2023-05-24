package com.accurate;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.accurate.user.action.UserAction;
import com.accurate.user.dao.hibernateUtil;
import com.domainobj.User;
import com.invoice.InvoiceDO;


public class Test {
	static Logger logger=Logger.getLogger(Test.class);
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
		List<InvoiceDO> invoiceList=new ArrayList<InvoiceDO>();
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		hibernateUtil hbl=(hibernateUtil)ctx.getBean("hibernateUtil");
//		Session session=ht.getSessionFactory().openSession();
		Session session=hbl.createSession();
		Criteria criteria=session.createCriteria(InvoiceDO.class);
		System.out.println(session.isOpen());
		invoiceList=criteria.list();
//		SQLQuery query=session.createSQLQuery("select * from profile_data");
		
//		List l=query.list();
//		Object[] o=(Object[])l.get(0);
		
		System.out.print(invoiceList);
	}

}
