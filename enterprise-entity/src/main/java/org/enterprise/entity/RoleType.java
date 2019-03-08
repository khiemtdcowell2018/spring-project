package org.enterprise.entity;

import java.io.Serializable;

/**
 * 
 * @author KHIEMTD
 *
 */
public enum RoleType implements Serializable{
	SHOUKAISHA("SHOUKAISHA"), KANRISHA("KANRISHA");

	String roleType;

	private RoleType(String roleType) {
		this.roleType = roleType;
	}

	public String getRoleType() {
		return roleType;
	}
}
