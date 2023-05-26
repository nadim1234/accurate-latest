package com.accurate.dao.invoice;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.query.Query;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StandardBasicTypes;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

import com.accurate.user.dao.hibernateUtil;
import com.invoice.InvoiceDO;

public class InvoiceDao {
	private Logger logger=Logger.getLogger(InvoiceDao.class);
	private hibernateUtil hibernateUtl;
	
	
	
	public hibernateUtil getHibernateUtl() {
		return hibernateUtl;
	}



	public void setHibernateUtl(hibernateUtil hibernateUtl) {
		this.hibernateUtl = hibernateUtl;
	}

	@SuppressWarnings("deprecation")
	@Transactional
	public List<InvoiceDO> getAllInvoice() {
		logger.info("InvoiceDao::getAllInvoice() start");
		List<InvoiceDO> invoiceList=new ArrayList<InvoiceDO>();
		List<Object[]> l;
		try {
			Session session=hibernateUtl.createSession();
			SQLQuery query=session.createSQLQuery("select Invoice_id as invoiceId,Invoice_No as invoiceNo,Invoice_Date as invoiceDate,Invoice_Status as status,Customer_Name as customerName,Invoice_Value as invoiceValue,Due_Date as dueDate from invoice");
			
			query.addScalar("invoiceId",StandardBasicTypes.INTEGER);
			query.addScalar("invoiceNo",StandardBasicTypes.STRING);
			query.addScalar("invoiceDate",StandardBasicTypes.DATE);
			query.addScalar("status",StandardBasicTypes.STRING);
			query.addScalar("customerName",StandardBasicTypes.STRING);
			query.addScalar("invoiceValue",StandardBasicTypes.BIG_DECIMAL);
			query.addScalar("dueDate",StandardBasicTypes.DATE);
			
			query.setResultTransformer(Transformers.aliasToBean(InvoiceDO.class));
			System.out.println(session.isOpen());
			invoiceList=query.list();
			/*Object[] o=l.get(0);
			System.out.println(o[0]);*/
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getAllInvoice()==>"+e);
		}
		logger.info("InvoiceDao::getAllInvoice() end");
		return invoiceList;
	}
	
	@SuppressWarnings("deprecation")
	@Transactional
	public List<String> getCustometList(){
		logger.info("InvoiceDao :: getCustomerList :: Start ");
		List<String> custList = new ArrayList<String>();
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select Customer_Name from customer");
			custList = query.list();
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: GetCustomerList ");
		}
		logger.info("InvoiceDao :: getCustomerList method end");
		return custList;
	}
	
	@SuppressWarnings("deprecation")
	@Transactional
	public List<String> getProductList(){
		logger.info("InvoiceDao :: getProductList :: Start ");
		List<String> prodList = new ArrayList<String>();
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select ProductName from product");
			prodList = query.list();
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getProductList ");
		}
		logger.info("InvoiceDao :: getProductList method end");
		return prodList;
	}
	
	
	@SuppressWarnings("deprecation")
	@Transactional
	public String getCustomerAddress(String custname){
		logger.info("InvoiceDao :: getCustomerAddress :: Start ");
		String address = "";
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select concat(Address1,'~',ShippingAddress1) from customer where Customer_Name ="+'"'+custname+'"');
			List l =  query.list();
			address = (String) l.get(0);
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getCustomerAddress ");
		}
		logger.info("InvoiceDao :: getCustomerAddress method end");
		return address;
	}
	
	
	@SuppressWarnings("deprecation")
	@Transactional
	public int getProductDetails(String prodname){
		logger.info("InvoiceDao :: getProductDetails :: Start ");
		int Amount=0;
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select Rate from product where ProductName="+'"'+prodname+'"');
			List l =  query.list();
			Amount = (Integer) l.get(0);
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getProductDetails ");
		}
		logger.info("InvoiceDao :: getProductDetails method end");
		return Amount;
	}
	
	
	@SuppressWarnings("deprecation")
	@Transactional
	public String saveInvoice(InvoiceDO invoiceDO){
		logger.info("InvoiceDao :: getProductDetails :: Start ");
		String Amount = "";
		try {
			Session session = hibernateUtl.createSession();
			//SQLQuery query = session.createSQLQuery("select Rate from product where ProductName=:"+prodname);
			
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getProductDetails ");
		}
		logger.info("InvoiceDao :: getProductDetails method end");
		return Amount;
	}
	
}
