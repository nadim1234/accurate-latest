package com.invoice;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductDO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Product_Id")
	Integer productId;

	@Column(name = "ProductName")
	String productName;
	
	@Column(name = "Unit")
	Integer unit;
	
	@Column(name = "Rate")
	Integer Rate;
	
	@Column(name = "Category")
	String Category;

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Integer getUnit() {
		return unit;
	}

	public void setUnit(Integer unit) {
		this.unit = unit;
	}

	public Integer getRate() {
		return Rate;
	}

	public void setRate(Integer rate) {
		Rate = rate;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}
	
	
	
	
	
}
