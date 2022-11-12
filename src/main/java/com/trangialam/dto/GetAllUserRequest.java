package com.trangialam.dto;

import java.util.List;

import com.trangialam.model.User;



public class GetAllUserRequest {
	
	private List<User> listUser;

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}
	

}
