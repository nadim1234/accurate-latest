package com.accurate.service.invoice;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.accurate.action.invoice.InvoiceAction;
import com.accurate.dao.invoice.InvoiceDao;
import com.invoice.InvoiceDO;

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
}

