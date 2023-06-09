package com.accurate.dao.invoice;

import java.math.RoundingMode;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;

import com.accurate.user.dao.hibernateUtil;
import com.invoice.CustomerDO;
import com.invoice.InvoiceDO;
import com.invoice.InvoiceProductDO;
import com.invoice.ProductDO;

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
			
		/*	Criteria criteria=session.createCriteria(InvoiceDO.class);
			System.out.println(session.isOpen());
			invoiceList=criteria.list();*/
			
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
			query.addScalar("gstNo",StandardBasicTypes.STRING);
			query.addScalar("address1",StandardBasicTypes.STRING);
			query.addScalar("address2",StandardBasicTypes.STRING);
			query.addScalar("city",StandardBasicTypes.STRING);
			query.addScalar("pincode",StandardBasicTypes.INTEGER);
			query.addScalar("state",StandardBasicTypes.STRING);
			query.addScalar("country",StandardBasicTypes.STRING);
			query.addScalar("email",StandardBasicTypes.STRING);
			query.addScalar("contactNo",StandardBasicTypes.STRING);
			
			query.setResultTransformer(Transformers.aliasToBean(CustomerDO.class));
			
			CustomerDO customerDO=(CustomerDO)query.uniqueResult();
			
			invoiceDO.setCustomerDO(customerDO);
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::viewInvoice()==>"+e);
		}
		logger.info("InvoiceService::getInvoiceById() end");
		return invoiceDO;
		}

	@SuppressWarnings("deprecation")
	@Transactional
	public String  getMaxInviceNo(){
		logger.info("InvoiceDao :: getMaxInviceNo :: Start ");
		String invoiceNo="";
		String [] arr ;
		Integer temp;
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select max(Invoice_No) from invoice");
			
			invoiceNo=(String) query.uniqueResult();
			
			arr = invoiceNo.split("/");
			temp = Integer.parseInt(arr[2]);
			temp = temp+1;
			invoiceNo = arr[0]+arr[1]+temp;
			
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getMaxInviceNo ");
		}
		logger.info("InvoiceDao :: getMaxInviceNo method end");
		return invoiceNo;
	}
	
	@SuppressWarnings("deprecation")
	@Transactional
	public List<CustomerDO> getCustometList(){
		logger.info("InvoiceDao :: getCustomerList :: Start ");
		List<CustomerDO> custList = new ArrayList<CustomerDO>();
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select Customer_Id as customerId , Customer_Name as customerName from customer");
			query.addScalar("customerId",StandardBasicTypes.INTEGER);
			query.addScalar("customerName",StandardBasicTypes.STRING);
			
			query.setResultTransformer(Transformers.aliasToBean(CustomerDO.class));
			custList=query.list();
			
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: GetCustomerList ");
		}
		logger.info("InvoiceDao :: getCustomerList method end");
		return custList;
	}
	
	@SuppressWarnings("deprecation")
	@Transactional
	public List<ProductDO> getProductList(){
		logger.info("InvoiceDao :: getProductList :: Start ");
		List<ProductDO> prodList = new ArrayList<ProductDO>();
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select Product_Id as productId, ProductName as productName from product");
			query.addScalar("productId",StandardBasicTypes.INTEGER);
			query.addScalar("productName",StandardBasicTypes.STRING);
			
			query.setResultTransformer(Transformers.aliasToBean(ProductDO.class));
			prodList=query.list();
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getProductList ");
		}
		logger.info("InvoiceDao :: getProductList method end");
		return prodList;
	}
	
	
	@SuppressWarnings("deprecation")
	@Transactional
	public String getCustomerAddress(String custId){
		logger.info("InvoiceDao :: getCustomerAddress :: Start ");
		String address = "";
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select concat(Address1,'~',ShippingAddress1,'~',state) from customer where Customer_Id ="+Integer.parseInt(custId));
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
	public ProductDO getProductDetails(String prodId){
		logger.info("InvoiceDao :: getProductDetails :: Start ");
		ProductDO proddtl = new ProductDO();
		List<ProductDO> prodList = new ArrayList<ProductDO>();
		try {
			Session session = hibernateUtl.createSession();
			SQLQuery query = session.createSQLQuery("select Unit as unit , Rate as rate,Category as category,applicable_tax as applicableTax from product where Product_Id="+Integer.parseInt(prodId));
			
			query.addScalar("unit",StandardBasicTypes.INTEGER);
			query.addScalar("Rate",StandardBasicTypes.INTEGER);
			query.addScalar("Category",StandardBasicTypes.STRING);
			query.addScalar("applicableTax",StandardBasicTypes.STRING);
			
			query.setResultTransformer(Transformers.aliasToBean(ProductDO.class));
			prodList= query.list();
			for(ProductDO pr : prodList) {
				if(pr.getCategory() != null)
					proddtl.setCategory(pr.getCategory());
				if(pr.getRate() != null)
					proddtl.setRate(pr.getRate());
				if(pr.getUnit() != null)
					proddtl.setUnit(pr.getUnit());
				if(pr.getApplicableTax()!=null) {
					proddtl.setApplicableTax(pr.getApplicableTax());
				}
			}
			
		}catch(Exception e) {
			logger.error("Exception occured in InvoiceDao :: getProductDetails ");
		}
		logger.info("InvoiceDao :: getProductDetails method end");
		return proddtl;
	}
	
	
	@SuppressWarnings("deprecation")
	@Transactional
	public void saveInvoice(InvoiceDO invoiceDO){
		logger.info("InvoiceDao :: getProductDetails :: Start ");
		 
		try {
			
			int invoiceId ;
			Session session = hibernateUtl.createSession();
			SQLQuery query1 = session.createSQLQuery("select max(Invoice_Id) from invoice");
			
			invoiceId=  (Integer) query1.uniqueResult();
			invoiceId = invoiceId + 1;
			
			//Session session = hibernateUtl.createSession();
			Transaction transaction= session.getTransaction();
			transaction.begin();
			SQLQuery query = session.createSQLQuery("Insert into invoice (Invoice_No,Invoice_Date,Customer_Name,Billing_Address"
					+ ",City,Shipping_Address,PO_No,CGST_Value,SGST_Value,IGST_Value,Taxable_Value,Invoice_Value,Invoice_Product_ID"
					+ ",Month,Invoice_Id) values(:ivno,:invdate,:custname,:billingadd,:city,:shippingadd,:pono,:cgstno,:sgstno,:igst,:taxablevalue,"
					+ ":invoiceval,:prodid,:month,:invoiceid)");
					
			query.setParameter("ivno", invoiceDO.getInvoiceNo());
			query.setParameter("invdate", invoiceDO.getInvoiceDate());
			query.setParameter("custname", invoiceDO.getCustomerName());
			query.setParameter("billingadd", invoiceDO.getBillingAddress());
			query.setParameter("city", "Mum");
			query.setParameter("shippingadd", invoiceDO.getShippingAddress());
			query.setParameter("pono", invoiceDO.getPoNo());
			query.setParameter("cgstno", 9);
			query.setParameter("sgstno",9);
			query.setParameter("igst", 18);
			query.setParameter("taxablevalue", invoiceDO.getTaxableValue().setScale(0, RoundingMode.HALF_UP));
			query.setParameter("invoiceval", invoiceDO.getInvoiceValue().setScale(0, RoundingMode.HALF_UP));
			query.setParameter("prodid", 1);
		//	query.setParameter("regid", invoiceDO.getInvoiceProductDO().getRegisterId());
			//query.setParameter("userid", invoiceDO.getInvoiceProductDO().getUserId());
			query.setParameter("month", "dec");
			query.setParameter("invoiceid", invoiceId );
					
			System.out.println(invoiceDO.getInvoiceNo()+"-"+invoiceDO.getInvoiceDate()+"-"+invoiceDO.getCustomerName()+"-"+invoiceDO.getBillingAddress()+"-"+invoiceDO.getPoNo()+"-"+invoiceDO.getInvoiceValue());
			
			query.executeUpdate();
			transaction.commit();
			if(session.isOpen()) {
				session.close();
			}
			
			for(InvoiceProductDO invoiceprodDo : invoiceDO.getInvoiceProductDOs()) {
				
				int prodId ;
				Session session1 = hibernateUtl.createSession();
				SQLQuery query3 = session1.createSQLQuery("select max(Invoice_Product_Id) from invoice_products");
				Object o =  query3.uniqueResult();
				if(o == null) {
					prodId = 1;
				}else {
					int a = (Integer) o;
					prodId = a + 1;
				}
				
						
				Transaction transaction1= session1.getTransaction();
				transaction1.begin();
				SQLQuery query2 = session1.createSQLQuery("Insert into invoice_products (Invoice_Product_Id,Product_Name,Product_Description"
						+ ",Quantity,Unit,Rate,Discount,Amount,Tax,Invoice_No,Invoice_ID,Register_Id,User_Id) values(:prodid,:proddname,:proddesc"
						+ ",:quantity,:unit,:rate,:discount,:amt,:tax,:invNo,:invId,:regId,:userId)");
						
				query2.setParameter("prodid", prodId);
				query2.setParameter("proddname", invoiceprodDo.getProductName());
				query2.setParameter("proddesc", invoiceprodDo.getCategory());
				query2.setParameter("quantity", invoiceprodDo.getQuantity());
				query2.setParameter("unit", invoiceprodDo.getQuantity());
				query2.setParameter("rate", invoiceprodDo.getRate().setScale(0, RoundingMode.HALF_UP));
				query2.setParameter("discount", invoiceprodDo.getDiscount());
				query2.setParameter("amt", invoiceprodDo.getAmount().setScale(0, RoundingMode.HALF_UP));
				query2.setParameter("tax", 18);
				query2.setParameter("invNo", 12345);
				query2.setParameter("invId", invoiceId);
				query2.setParameter("regId", 54321);
				query2.setParameter("userId", 12345);
				
				query2.executeUpdate();
				transaction1.commit();
				
				if(session1.isOpen()) {
					session1.close();
				}
				
			}
					
			
			
		}catch(Exception e) {
			System.out.println("exception occured :"+e);
			logger.error("Exception occured in InvoiceDao :: getProductDetails ");
		}
		logger.info("InvoiceDao :: getProductDetails method end");
		
	}
}
