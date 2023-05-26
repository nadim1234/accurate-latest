package com.invoice;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "invoice_products")

public class InvoiceProductDO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Invoice_Product_Id")
	Integer invoiceProductId;

	@Column(name = "Product_Name")
	String productName;
	
	@Column(name = "Product_Description")
	String productDescription;
	
	@Column(name = "HSN_SAC")
	String HSNSAC;
	
	@Column(name = "Quantity")
	Integer quantity;
	
		
	@Column(name = "Rate")
	Integer rate;
	
	@Column(name = "Discount")
	Integer discount;
	
	@Column(name = "Amount")
	Integer amount;
		
	@Column(name = "Invoice_No")
	Integer invoice_No;
	
	@Column(name = "Invoice_Date")
	Date invoice_Date;
	
	@Column(name = "Invoice_ID")
	Integer invoice_ID;
		
	@Column(name = "CreatedBy")
	String createdBy;
	
	@Column(name = "Created_Date")
	Date Created_Date;
	
	@Column(name = "Register_Id")
	Integer registerId;
	
	@Column(name = "User_Id")
	Integer userId;
	
	@Column(name = "Tax")
	Integer tax;

	public Integer getTax() {
		return tax;
	}

	public void setTax(Integer tax) {
		this.tax = tax;
	}

	public Integer getInvoiceProductId() {
		return invoiceProductId;
	}

	public void setInvoiceProductId(Integer invoiceProductId) {
		this.invoiceProductId = invoiceProductId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getHSNSAC() {
		return HSNSAC;
	}

	public void setHSNSAC(String hSNSAC) {
		HSNSAC = hSNSAC;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public Integer getRate() {
		return rate;
	}

	public void setRate(Integer rate) {
		this.rate = rate;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}


	public Integer getInvoice_No() {
		return invoice_No;
	}

	public void setInvoice_No(Integer invoice_No) {
		this.invoice_No = invoice_No;
	}

	public Date getInvoice_Date() {
		return invoice_Date;
	}

	public void setInvoice_Date(Date invoice_Date) {
		this.invoice_Date = invoice_Date;
	}

	public Integer getInvoice_ID() {
		return invoice_ID;
	}

	public void setInvoice_ID(Integer invoice_ID) {
		this.invoice_ID = invoice_ID;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreated_Date() {
		return Created_Date;
	}

	public void setCreated_Date(Date created_Date) {
		Created_Date = created_Date;
	}

	public Integer getRegisterId() {
		return registerId;
	}

	public void setRegisterId(Integer registerId) {
		this.registerId = registerId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}
