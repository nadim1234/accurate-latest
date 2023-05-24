package com.accurate.action.invoice;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.accurate.service.invoice.InvoiceService;
import com.invoice.InvoiceDO;
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

}
