package com.accurate.action.invoice;

import java.math.BigDecimal;
import java.sql.Date;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import org.apache.struts2.ServletActionContext;

import org.json.JSONObject;

import com.accurate.service.invoice.InvoiceService;
import com.invoice.CustomerDO;
import com.invoice.InvoiceDO;
import com.invoice.InvoiceProductDO;
import com.invoice.ProductDO;

import com.opensymphony.xwork2.ActionSupport;

import com.opensymphony.xwork2.util.Element;


public class InvoiceAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private InvoiceService invoiceService;
	private Integer selectedInvoiceId;
	
	@Element(value=InvoiceDO.class)
	private List<InvoiceDO> invoiceList=new ArrayList<InvoiceDO>();
	
	private InvoiceDO invoiceDO=new InvoiceDO();
	private List<CustomerDO> customerdo = new ArrayList<CustomerDO>();
	private List<ProductDO> productdo = new ArrayList<ProductDO>();
		

	public List<CustomerDO> getCustomerdo() {
		return customerdo;
	}

	public void setCustomerdo(List<CustomerDO> customerdo) {
		this.customerdo = customerdo;
	}

	public List<ProductDO> getProductdo() {
		return productdo;
	}

	public void setProductdo(List<ProductDO> productdo) {
		this.productdo = productdo;
	}

	public Integer getSelectedInvoiceId() {
		return selectedInvoiceId;
	}

	public void setSelectedInvoiceId(Integer selectedInvoiceId) {
		this.selectedInvoiceId = selectedInvoiceId;
	}

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
	public String viewInvoice() {
		
		logger.info("InvoiceAction::viewInvoice() start");
		try {
			System.out.println("selectedInvoiceId:"+selectedInvoiceId);
			invoiceDO=invoiceService.getInvoiceById(selectedInvoiceId);
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::viewInvoice()==>"+e);
		}
		logger.info("InvoiceAction::viewInvoice() end");
		return SUCCESS;
	}
	public String loadAddInvoice() {
		logger.info("InvoiceAction :: loadAddInvoice :: start loadAddInvoice method");
		try {
			
			invoiceDO=invoiceService.getCustometListAndProductList();
					
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::loadAddInvoice()==>"+e);
			return INPUT;
		}
		logger.info("InvoiceAction :: loadAddInvoice :: end loadAddInvoice method");
		return SUCCESS;
	}
	
	
	public String getCustomerAddress() {
		logger.info("InvoiceAction :: getCustomerAddress :: start getCustomerAddress method");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String custId = request.getParameter("custId");
		JSONObject jsonobject = new JSONObject();
		try {
			
			System.out.println("Successfuly called getCustomerAddress :: "+custId);
			String address = invoiceService.getCustomerAddress(custId);
			String [] addresstemp = address.split("~");
			System.out.println("Successfuly got address :: "+addresstemp[0]);
			System.out.println("Successfuly got shipping address :: "+addresstemp[1]);
			System.out.println("Successfuly got state :: "+addresstemp[2]);
			jsonobject.put("invoiceFrom",addresstemp[0] );
			jsonobject.put("invoiceTo", addresstemp[1]);
			jsonobject.put("state", addresstemp[2]);
			response.getWriter().println(jsonobject);
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getCustomerAddress()==>"+e);
			return INPUT;
		}
		logger.info("InvoiceAction :: getCustomerAddress :: end getCustomerAddress method");
		return null;
	}
	
	public String getProductDetails() {
		logger.info("InvoiceAction :: getProductDetails :: start getProductDetails method");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String prodId = request.getParameter("prodId");
		ProductDO productdetails = new ProductDO();
		JSONObject jsonobject = new JSONObject();
		try {
			
			System.out.println("getproductDetails sucessfully called ");
			productdetails = invoiceService.getProductDetails(prodId);
			System.out.println("Successfuly got product amount :: "+productdetails);
			   if(productdetails.getRate() != null) {
				jsonobject.put("productAmount", productdetails.getRate());
			   }
			   if(productdetails.getCategory() != null) {
				jsonobject.put("Category", productdetails.getCategory());
			   }
			   if(productdetails.getUnit() != null) {
				jsonobject.put("Unit", productdetails.getUnit());
			   }
			   if(productdetails.getApplicableTax()!=null) {
				   jsonobject.put("ApplicableTax", productdetails.getApplicableTax());
			   }
			
			
			response.getWriter().println(jsonobject);
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::getProductDetails()==>"+e);
			return INPUT;
		}
		logger.info("InvoiceAction :: getProductDetails :: end getProductDetails method");
		return null;
	}
	
	public String saveInvoice() {
		logger.info("InvoiceAction :: saveInvoice :: start saveInvoice method");
		System.out.println(invoiceDO.getCustomerName());
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		/*String custnameselected = request.getParameter("custnameselected");
		String poNumber = request.getParameter("poNumber");
		String invoiceNo = request.getParameter("invoiceNo");
		//String invoiceDate = request.getParameter("invoiceDate");
		//String invoiceDueDtae = request.getParameter("invoiceDueDtae");
		String invoiceFrom = request.getParameter("invoiceFrom");
		String invoiceTo = request.getParameter("invoiceTo");
		String selectedProduct = request.getParameter("selectedProduct");
		String prodDesc = request.getParameter("prodDesc");
		Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		BigDecimal rate =new BigDecimal(Integer.parseInt(request.getParameter("rate")));
		BigDecimal amount =new BigDecimal(Integer.parseInt(request.getParameter("amount")));
		double temptax = Double.parseDouble(request.getParameter("taxableAmount"));
		Integer temptotal = Integer.parseInt(request.getParameter("totalamount"));
		BigDecimal taxableAmount = new BigDecimal(temptax);
		BigDecimal totalamount = new BigDecimal(temptotal);*/
		try {
			
			
			/*InvoiceProductDO invoiceProductdo = new InvoiceProductDO();
			invoiceDO.setInvoiceNo(invoiceNo);
			invoiceDO.setPoNo(poNumber);
			invoiceDO.setBillingAddress(invoiceFrom);
			invoiceDO.setShippingAddress(invoiceTo);
			invoiceDO.setCustomerName(custnameselected);
			invoiceDO.setCity("Pune");
			invoiceDO.setState("Mharashtra");
			invoiceDO.setGstNo("1234");
			invoiceDO.setTaxableValue(taxableAmount);
			invoiceDO.setInvoiceValue(totalamount);
			invoiceProductdo.setProductName(selectedProduct);
			invoiceProductdo.setProductDescription(prodDesc);
			invoiceProductdo.setQuantity(quantity);
			invoiceProductdo.setRate(rate);
			invoiceProductdo.setDiscount(10.0);
			invoiceProductdo.setAmount(amount);
			invoiceProductdo.setTax(temptax);
			invoiceProductdo.setInvoice_No(123456);
			invoiceProductdo.setInvoice_ID(7);
			invoiceProductdo.setRegisterId(555555);
			invoiceProductdo.setUserId(362648);
			List<InvoiceProductDO> prodList=new ArrayList<InvoiceProductDO>();
			prodList.add(invoiceProductdo);
			invoiceDO.setInvoiceProductDOs(prodList);*/
			invoiceService.saveInvoice(invoiceDO);
		//	System.out.println("invoicedo data :"+invoiceDO.getPoNo());
		//	System.out.println("product rate "+invoiceDO.getInvoiceProductDO().getRate());
			
			
		}catch(Exception e) {
			logger.error("Exception in InvoiceAction::saveInvoice()==>"+e);
			return INPUT;
		}
		logger.info("InvoiceAction :: saveInvoice :: end saveInvoice method");
		return SUCCESS;
	}

}
