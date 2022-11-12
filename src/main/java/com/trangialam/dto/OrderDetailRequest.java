package com.trangialam.dto;

import java.util.List;

import com.trangialam.model.Item;
import com.trangialam.model.Order;

public class OrderDetailRequest {

	private Order order;
	private List<Item> items;

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	

	
	

}
