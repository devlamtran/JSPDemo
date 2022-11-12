package com.trangialam.dto;

import java.util.List;


import com.trangialam.model.Role;

public class GetAllRoleRequest {
	
	private List<Role> listRoles;

	public List<Role> getListRoles() {
		return listRoles;
	}

	public void setListRoles(List<Role> listRoles) {
		this.listRoles = listRoles;
	}

	

}
