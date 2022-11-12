package com.trangialam.dto;

import java.util.List;

import com.trangialam.model.Product;

public class GetAllProductCategoryRequest {
	
	private List<Product> listProduct;
	
	public List<Product> getListProduct() {
		return listProduct;
	}
	public void setListProduct(List<Product> listProduct) {
		this.listProduct = listProduct;
	}
	
	
	

}
