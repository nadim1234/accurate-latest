package com.accurate.action.invoice;

import java.sql.Date;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.RequestUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;
import org.json.JSONObject;

import com.accurate.service.invoice.InvoiceService;
import com.invoice.InvoiceDO;
import com.invoice.InvoiceProductDO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.CreateIfNull;
import com.opensymphony.xwork2.util.Element;
import com.opensymphony.xwork2.util.Key;
import com.opensymphony.xwork2.util.KeyProperty;

public class InvoiceAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private InvoiceService invoiceService;
	
	@Element(value=InvoiceDO.class)
	private List<InvoiceDO> invoiceList=new ArrayList<InvoiceDO>();
	
	private InvoiceDO invoiceDO=new InvoiceDO();
	
	

	public InvoiceDO getInvoiceDO() {
		return invoiceDO;
	}

	public void setInvoiceDO(InvoiceDO invoiceDO) {
		this.invoiceDO = invoiceDO;
	}


	private Logger logger=Logger.getLogger(InvoiceAction.class);
	
	
	
	public List<InvoiceDO> getInvoiceList() {
		return invoiceList;
	}

	public void setInvoiceList(List<InvoiceDO> invoiceList) {
		this.invoiceList = invoiceList;
	}

	public InvoiceService getInvoiceService() {
		return invoiceService;
	}

	public void setInvoiceService(InvoiceService invoiceService) {
		this.invoiceService = invoiceService;
	}
	
	List <String> customerList = new ArrayList<String>();

	public List<String> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<String> customerList) {
		this.customerList = customerList;
	}
	List<String> prodList = new ArrayList<String>();

	public List<String> getProdList() {
		return prodList;
	}

	public void setProdList(List<String> prodList) {
		this.prodList = prodList;
	}

	public String getAllInvoice() {
		logger.info("InvoiceAction::getAllInvoice() start");
		try {
			invoiceDO=invoiceService.getAllInvoice();
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getAllInvoice()==>"+e);
		}
		logger.info("InvoiceAction::getAllInvoice() end");
		return SUCCESS;
	}
	
	public String loadAddInvoice() {
		logger.info("InvoiceAction :: loadAddInvoice :: start loadAddInvoice method");
		try {
			
			customerList=invoiceService.getCustometList();
			prodList = invoiceService.getProductList();
			invoiceDO.setInvoiceNo("IN098765423");
			long millis=System.currentTimeMillis(); 
			invoiceDO.setInvoiceDate(new Date(millis));
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::loadAddInvoice()==>"+e);
		}
		logger.info("InvoiceAction :: loadAddInvoice :: end loadAddInvoice method");
		return SUCCESS;
	}
	
	
	public String getCustomerAddress() {
		logger.info("InvoiceAction :: getCustomerAddress :: start getCustomerAddress method");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String custname = request.getParameter("custName");
		JSONObject jsonobject = new JSONObject();
		try {
			
			System.out.println("Successfuly called getCustomerAddress :: "+custname);
			String address = invoiceService.getCustomerAddress(custname);
			String [] addresstemp = address.split("~");
			System.out.println("Successfuly got address :: "+addresstemp[0]);
			System.out.println("Successfuly got shipping address :: "+addresstemp[1]);
			jsonobject.put("invoiceFrom",addresstemp[0] );
			jsonobject.put("invoiceTo", addresstemp[1]);
			response.getWriter().println(jsonobject);
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getCustomerAddress()==>"+e);
		}
		logger.info("InvoiceAction :: getCustomerAddress :: end getCustomerAddress method");
		return null;
	}
	
	public String getProductDetails() {
		logger.info("InvoiceAction :: getProductDetails :: start getProductDetails method");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String prodName = request.getParameter("prodName");
		JSONObject jsonobject = new JSONObject();
		try {
			
			System.out.println("Successfuly called getProductDetails :: "+prodName);
			int amount = invoiceService.getProductDetails(prodName);
			System.out.println("Successfuly got product amount :: "+amount);
			jsonobject.put("productAmount", amount);
			response.getWriter().println(jsonobject);
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getProductDetails()==>"+e);
		}
		logger.info("InvoiceAction :: getProductDetails :: end getProductDetails method");
		return null;
	}
	
	public String saveInvoice() {
		logger.info("InvoiceAction :: saveInvoice :: start saveInvoice method");
		try {
			 
			invoiceService.saveInvoice(invoiceDO);
			System.out.println("invoicedo data :"+invoiceDO.getPoNo());
			System.out.println("product rate "+invoiceDO.getInvoiceProductDO().getRate());
			
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::saveInvoice()==>"+e);
		}
		logger.info("InvoiceAction :: saveInvoice :: end saveInvoice method");
		return SUCCESS;
	}

}
