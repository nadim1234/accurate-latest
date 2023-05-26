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
import com.invoice.CustomerDO;
import com.invoice.InvoiceDO;
import com.invoice.InvoiceProductDO;

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
	
	public InvoiceDO getInvoiceById(Integer invoiceId) {
		logger.info("InvoiceService::getInvoiceById() start");
		InvoiceDO invoiceDO=new InvoiceDO();
		List<InvoiceProductDO> invoiceProductDOs=new ArrayList<InvoiceProductDO>();
		try {
			
			Session session=hibernateUtl.createSession();
			SQLQuery query=session.createSQLQuery("select invoice_product_id as invoiceProductId, product_name as productName,product_description as productDescription, rate,discount,quantity,amount from invoice_products where invoice_id=:v0");
			
			query.setParameter("v0", invoiceId);
			
			query.addScalar("invoiceProductId",StandardBasicTypes.INTEGER);
			query.addScalar("productName",StandardBasicTypes.STRING);
			query.addScalar("productDescription",StandardBasicTypes.STRING);
			query.addScalar("rate",StandardBasicTypes.BIG_DECIMAL);
			query.addScalar("discount",StandardBasicTypes.DOUBLE);
			query.addScalar("quantity",StandardBasicTypes.INTEGER);
			query.addScalar("amount",StandardBasicTypes.BIG_DECIMAL);
			
			query.setResultTransformer(Transformers.aliasToBean(InvoiceProductDO.class));
			
			invoiceProductDOs=query.list();
			if(session.isOpen()) {
				session.close();
			}
			
			
			
			Session session1=hibernateUtl.createSession();
			query=session1.createSQLQuery("select Invoice_id as invoiceId,Invoice_No as invoiceNo,Invoice_Date as invoiceDate,Invoice_Status as status,Customer_Name as customerName,Invoice_Value as invoiceValue,Due_Date as dueDate from invoice where invoice_id=:v0");
			query.setParameter("v0", invoiceId);
			query.addScalar("invoiceId",StandardBasicTypes.INTEGER);
			query.addScalar("invoiceNo",StandardBasicTypes.STRING);
			query.addScalar("invoiceDate",StandardBasicTypes.DATE);
			query.addScalar("status",StandardBasicTypes.STRING);
			query.addScalar("customerName",StandardBasicTypes.STRING);
			query.addScalar("invoiceValue",StandardBasicTypes.BIG_DECIMAL);
			query.addScalar("dueDate",StandardBasicTypes.DATE);
			
			query.setResultTransformer(Transformers.aliasToBean(InvoiceDO.class));
			
			invoiceDO=(InvoiceDO)query.uniqueResult();
			
			if(invoiceDO!=null) {
				invoiceDO.setInvoiceProductDOs(invoiceProductDOs);
			}
			if(session1.isOpen()) {
				session1.close();
			}
			
			Session session2=hibernateUtl.createSession();
			query=session2.createSQLQuery("select customer_id as customerId, customer_name as customerName, gst_no as gstNo, address1,address2,city,pincode,state,country,email,contact_no as contactNo from customer where customer_name=:v0");
			
			query.setParameter("v0", invoiceDO.getCustomerName());
			
			query.addScalar("customerId",StandardBasicTypes.INTEGER);
			query.addScalar("customerName",StandardBasicTypes.STRING);
			query.addScalar("gst_no",StandardBasicTypes.INTEGER);
			query.addScalar("address1",StandardBasicTypes.STRING);
			query.addScalar("address2",StandardBasicTypes.STRING);
			query.addScalar("city",StandardBasicTypes.STRING);
			query.addScalar("state",StandardBasicTypes.STRING);
			query.addScalar("country",StandardBasicTypes.STRING);
			query.addScalar("email",StandardBasicTypes.STRING);
			query.addScalar("contactNo",StandardBasicTypes.STRING);
			query.addScalar("pinCode",StandardBasicTypes.INTEGER);
			
			query.setResultTransformer(Transformers.aliasToBean(CustomerDO.class));
			
			CustomerDO customerDO=(CustomerDO)query.uniqueResult();
			
			invoiceDO.setCustomerDO(customerDO);
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::viewInvoice()==>"+e);
		}
		logger.info("InvoiceService::getInvoiceById() end");
		return invoiceDO;
		}
}
