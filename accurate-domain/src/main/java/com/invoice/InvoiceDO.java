package com.invoice;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "invoice")
public class InvoiceDO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Invoice_id")
	Integer invoiceId;

	@Column(name = "Invoice_No")
	String invoiceNo;

	@Column(name = "Invoice_Date")
	Date invoiceDate;

	@Column(name = "Customer_Name")
	String customerName;

	@Column(name = "Billing_Address")
	String BillingAddress;

	@Column(name = "City")
	String city;

	@Column(name = "State")
	String state;

	@Column(name = "GST_No")
	String gstNo;

	@Column(name = "ShippingCustomer_Name")
	String ShippingCustomerName;

	@Column(name = "Shipping_Address")
	String shippingAddress;

	@Column(name = "Shipping_City")
	String shippingCity;

	@Column(name = "Shipping_State")
	String shippingState;

	@Column(name = "ShippingGST_No")
	String shippingGstNo;

	@Column(name = "PO_No")
	String poNo;

	@Column(name = "PO_Date")
	Date poDate;

	@Column(name = "Challan_No")
	String challanNo;

	@Column(name = "Challan_Date")
	Date challanDate;

	@Column(name = "Transport_Mode")
	String transportMode;

	@Column(name = "Vehicle_No")
	String vehicleNo;

	@Column(name = "Payment_Terms")
	String paymentTerms;

	@Column(name = "Due_Date")
	Date dueDate;

	@Column(name = "Remark")
	String remarks;

	@Column(name = "Additional_Terms")
	String additionalTerms;

	@Column(name = "Service_Invoice")
	String serviceInvoice;

	@Column(name = "Transport_Charges")
	String transportCharges;

	@Column(name = "Additional_Charges")
	String additionalCharges;

	@Column(name = "Invoice_Status")
	String status;

	@Column(name = "Invoice_Value")
	BigDecimal invoiceValue;
	
	@Column(name = "Taxable_Value")
	BigDecimal taxableValue;
	
	@Column(name = "CGST_Value")
	Integer CGSTValue;
	
	@Column(name = "SGST_Value")
	Integer SGSTValue;
	
	@Column(name = "IGST_Value")
	Integer IGSTValue;
	

	public Integer getCGSTValue() {
		return CGSTValue;
	}

	public void setCGSTValue(Integer cGSTValue) {
		CGSTValue = cGSTValue;
	}

	public Integer getSGSTValue() {
		return SGSTValue;
	}

	public void setSGSTValue(Integer sGSTValue) {
		SGSTValue = sGSTValue;
	}

	public Integer getIGSTValue() {
		return IGSTValue;
	}

	public void setIGSTValue(Integer iGSTValue) {
		IGSTValue = iGSTValue;
	}

	public BigDecimal getTaxableValue() {
		return taxableValue;
	}

	public void setTaxableValue(BigDecimal taxableValue) {
		this.taxableValue = taxableValue;
	}

	// Transfer values start
	Integer totalInvoiceCount;

	BigDecimal totalInvoiceValue;

	Integer totalPaidInvoiceCount;

	BigDecimal totalPaidInvoiceValue;

	Integer totalUnpaidInvoiceCount;

	BigDecimal totalUnpaidInvoiceValue;

	Integer totalCancelledInvoiceCount;

	BigDecimal totalCancelledInvoiceValue;
	
	List<InvoiceDO> pageResults=new ArrayList<InvoiceDO>();
	List<CustomerDO> customerList = new ArrayList<CustomerDO>();
	List<ProductDO> productList = new ArrayList<ProductDO>();

	List<InvoiceProductDO> invoiceProductDOs=new ArrayList<InvoiceProductDO>();

	CustomerDO customerDO;
	
	
	public CustomerDO getCustomerDO() {
		return customerDO;
	}

	public void setCustomerDO(CustomerDO customerDO) {
		this.customerDO = customerDO;
	}

	public List<InvoiceProductDO> getInvoiceProductDOs() {
		return invoiceProductDOs;
	}

	public void setInvoiceProductDOs(List<InvoiceProductDO> invoiceProductDOs) {
		this.invoiceProductDOs = invoiceProductDOs;
	}
	

	public List<CustomerDO> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<CustomerDO> customerList) {
		this.customerList = customerList;
	}

	public List<ProductDO> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductDO> productList) {
		this.productList = productList;
	}

	public List<InvoiceDO> getPageResults() {
		return pageResults;
	}

	public void setPageResults(List<InvoiceDO> pageResults) {
		this.pageResults = pageResults;
	}

	public Integer getTotalInvoiceCount() {
		return totalInvoiceCount;
	}

	public void setTotalInvoiceCount(Integer totalInvoiceCount) {
		this.totalInvoiceCount = totalInvoiceCount;
	}

	public BigDecimal getTotalInvoiceValue() {
		return totalInvoiceValue;
	}

	public void setTotalInvoiceValue(BigDecimal totalInvoiceValue) {
		this.totalInvoiceValue = totalInvoiceValue;
	}

	public Integer getTotalPaidInvoiceCount() {
		return totalPaidInvoiceCount;
	}

	public void setTotalPaidInvoiceCount(Integer totalPaidInvoiceCount) {
		this.totalPaidInvoiceCount = totalPaidInvoiceCount;
	}

	public BigDecimal getTotalPaidInvoiceValue() {
		return totalPaidInvoiceValue;
	}

	public void setTotalPaidInvoiceValue(BigDecimal totalPaidInvoiceValue) {
		this.totalPaidInvoiceValue = totalPaidInvoiceValue;
	}

	public Integer getTotalUnpaidInvoiceCount() {
		return totalUnpaidInvoiceCount;
	}

	public void setTotalUnpaidInvoiceCount(Integer totalUnpaidInvoiceCount) {
		this.totalUnpaidInvoiceCount = totalUnpaidInvoiceCount;
	}

	public BigDecimal getTotalUnpaidInvoiceValue() {
		return totalUnpaidInvoiceValue;
	}

	public void setTotalUnpaidInvoiceValue(BigDecimal totalUnpaidInvoiceValue) {
		this.totalUnpaidInvoiceValue = totalUnpaidInvoiceValue;
	}

	public Integer getTotalCancelledInvoiceCount() {
		return totalCancelledInvoiceCount;
	}

	public void setTotalCancelledInvoiceCount(Integer totalCancelledInvoiceCount) {
		this.totalCancelledInvoiceCount = totalCancelledInvoiceCount;
	}

	public BigDecimal getTotalCancelledInvoiceValue() {
		return totalCancelledInvoiceValue;
	}

	public void setTotalCancelledInvoiceValue(BigDecimal totalCancelledInvoiceValue) {
		this.totalCancelledInvoiceValue = totalCancelledInvoiceValue;
	}

	//Transfer values end
	public BigDecimal getInvoiceValue() {
		return invoiceValue;
	}

	public void setInvoiceValue(BigDecimal invoiceValue) {
		this.invoiceValue = invoiceValue;
	}

	public Integer getInvoiceId() {
		return invoiceId;
	}

	public void setInvoiceId(Integer invoiceId) {
		this.invoiceId = invoiceId;
	}

	public String getInvoiceNo() {
		return invoiceNo;
	}

	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}

	public Date getInvoiceDate() {
		return invoiceDate;
	}

	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getBillingAddress() {
		return BillingAddress;
	}

	public void setBillingAddress(String billingAddress) {
		BillingAddress = billingAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGstNo() {
		return gstNo;
	}

	public void setGstNo(String gstNo) {
		this.gstNo = gstNo;
	}

	public String getShippingCustomerName() {
		return ShippingCustomerName;
	}

	public void setShippingCustomerName(String shippingCustomerName) {
		ShippingCustomerName = shippingCustomerName;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getShippingCity() {
		return shippingCity;
	}

	public void setShippingCity(String shippingCity) {
		this.shippingCity = shippingCity;
	}

	public String getShippingState() {
		return shippingState;
	}

	public void setShippingState(String shippingState) {
		this.shippingState = shippingState;
	}

	public String getShippingGstNo() {
		return shippingGstNo;
	}

	public void setShippingGstNo(String shippingGstNo) {
		this.shippingGstNo = shippingGstNo;
	}

	public String getPoNo() {
		return poNo;
	}

	public void setPoNo(String poNo) {
		this.poNo = poNo;
	}

	public Date getPoDate() {
		return poDate;
	}

	public void setPoDate(Date poDate) {
		this.poDate = poDate;
	}

	public String getChallanNo() {
		return challanNo;
	}

	public void setChallanNo(String challanNo) {
		this.challanNo = challanNo;
	}

	public Date getChallanDate() {
		return challanDate;
	}

	public void setChallanDate(Date challanDate) {
		this.challanDate = challanDate;
	}

	public String getTransportMode() {
		return transportMode;
	}

	public void setTransportMode(String transportMode) {
		this.transportMode = transportMode;
	}

	public String getVehicleNo() {
		return vehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}

	public String getPaymentTerms() {
		return paymentTerms;
	}

	public void setPaymentTerms(String paymentTerms) {
		this.paymentTerms = paymentTerms;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getAdditionalTerms() {
		return additionalTerms;
	}

	public void setAdditionalTerms(String additionalTerms) {
		this.additionalTerms = additionalTerms;
	}

	public String getServiceInvoice() {
		return serviceInvoice;
	}

	public void setServiceInvoice(String serviceInvoice) {
		this.serviceInvoice = serviceInvoice;
	}

	public String getTransportCharges() {
		return transportCharges;
	}

	public void setTransportCharges(String transportCharges) {
		this.transportCharges = transportCharges;
	}

	public String getAdditionalCharges() {
		return additionalCharges;
	}

	public void setAdditionalCharges(String additionalCharges) {
		this.additionalCharges = additionalCharges;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
