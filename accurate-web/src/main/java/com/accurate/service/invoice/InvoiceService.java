package com.accurate.service.invoice;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.accurate.action.invoice.InvoiceAction;
import com.accurate.dao.invoice.InvoiceDao;
import com.invoice.InvoiceDO;
import com.invoice.InvoiceProductDO;

public class InvoiceService {

	private InvoiceDao invoiceDao;
	
	private Logger logger=Logger.getLogger(InvoiceService.class);

	public InvoiceDao getInvoiceDao() {
		return invoiceDao;
	}

	public void setInvoiceDao(InvoiceDao invoiceDao) {
		this.invoiceDao = invoiceDao;
	}
	
	public InvoiceDO getAllInvoice() {
		logger.info("InvoiceService::getAllInvoice() start");
		List<InvoiceDO> invoiceList=null;
		InvoiceDO invoiceDO=new InvoiceDO();
		try {
			invoiceList=invoiceDao.getAllInvoice();
			
			invoiceDO.setPageResults(invoiceList);
			//calculation of total values
			Integer tempTotal=0;
			BigDecimal tempTotalVal=BigDecimal.ZERO;
			
			for(InvoiceDO tempInvoiceDO:invoiceList) tempTotalVal=tempTotalVal.add(tempInvoiceDO.getInvoiceValue());
			
			invoiceDO.setTotalInvoiceValue(tempTotalVal);
			invoiceDO.setTotalInvoiceCount(invoiceList.size());
			
			tempTotalVal=BigDecimal.ZERO;
			
			for(InvoiceDO tempInvoiceDO:invoiceList)
				if(tempInvoiceDO.getStatus()!=null && tempInvoiceDO.getStatus().trim().length()>0 && tempInvoiceDO.getStatus().toLowerCase().equals("paid")) {
				tempTotalVal=tempTotalVal.add(tempInvoiceDO.getInvoiceValue());
				tempTotal++;
				}
			
			invoiceDO.setTotalPaidInvoiceValue(tempTotalVal);
			invoiceDO.setTotalPaidInvoiceCount(tempTotal);
			
			tempTotalVal=BigDecimal.ZERO;
			tempTotal=0;
			for(InvoiceDO tempInvoiceDO:invoiceList)
				if(tempInvoiceDO.getStatus()!=null && tempInvoiceDO.getStatus().trim().length()>0 && tempInvoiceDO.getStatus().toLowerCase().equals("unpaid")) {
				tempTotalVal=tempTotalVal.add(tempInvoiceDO.getInvoiceValue());
				tempTotal++;
				}
			invoiceDO.setTotalUnpaidInvoiceValue(tempTotalVal);
			invoiceDO.setTotalUnpaidInvoiceCount(tempTotal);
			
			tempTotalVal=BigDecimal.ZERO;
			tempTotal=0;
			for(InvoiceDO tempInvoiceDO:invoiceList)
				if(tempInvoiceDO.getStatus()!=null && tempInvoiceDO.getStatus().trim().length()>0 && tempInvoiceDO.getStatus().toLowerCase().equals("cancelled")) {
				tempTotalVal=tempTotalVal.add(tempInvoiceDO.getInvoiceValue());
				tempTotal++;
				}
			invoiceDO.setTotalCancelledInvoiceValue(tempTotalVal);
			invoiceDO.setTotalCancelledInvoiceCount(tempTotal);
			
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getAllInvoice()==>"+e);
		}
		logger.info("InvoiceService::getAllInvoice() end");
		return invoiceDO;
	}
	
	public List<String> getCustometList(){
		logger.info("InvoiceService :: getCustomerList :: start method ");
		List<String> custList = new ArrayList<String>();
		try {
			custList = invoiceDao.getCustometList();
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getCustomerList()==>"+e);
		}
		logger.info("InvoiceService :: getCustomerList :: end method ");
		return custList;
	}
	
	public List<String> getProductList(){
		logger.info("InvoiceService :: getProductList :: start method ");
		List<String> prodList = new ArrayList<String>();
		try {
			prodList = invoiceDao.getProductList();
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getProductList()==>"+e);
		}
		logger.info("InvoiceService :: getProductList :: end method ");
		return prodList;
	}
	
	public String getCustomerAddress(String custname){
		logger.info("InvoiceService :: getCustomerAddress :: start method ");
		String address = "";
		try {
			address = invoiceDao.getCustomerAddress(custname);
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getCustomerAddress()==>"+e);
		}
		logger.info("InvoiceService :: getCustomerAddress :: end method ");
		return address;
	}
	
	
	public int getProductDetails(String prodname){
		logger.info("InvoiceService :: getProductDetails :: start method ");
		int Amount =0;
		try {
			Amount = invoiceDao.getProductDetails(prodname);
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getProductDetails()==>"+e);
		}
		logger.info("InvoiceService :: getProductDetails :: end method ");
		return Amount;
	}
	
	public void saveInvoice(InvoiceDO invoiceDO){
		logger.info("InvoiceService :: saveInvoice :: start method ");
		
		try {
			if(invoiceDO.getTaxableValue() == null) {
				invoiceDO.setTaxableValue(new BigDecimal(50));
			}
			if(invoiceDO.getTotalInvoiceValue() == null) {
				invoiceDO.setInvoiceValue(new BigDecimal(1000));
			}
			invoiceDao.saveInvoice(invoiceDO);
		}catch(Exception e) {
			logger.error("Exception in InvoiceService::saveInvoice()==>"+e);
		}
		logger.info("InvoiceService :: saveInvoice :: end method ");
		
	}
}

