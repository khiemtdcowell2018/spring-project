package org.enterprise.entity;

import java.io.Serializable;

/**
 * 
 * @author KHIEMTD
 *
 */
public enum RoleType implements Serializable {
	SHOUKAISHA("SHOUKAISHA", "Người giới thiệu", "Introducer", "紹介者"),
	KANRISHA("KANRISHA", "Người quản lý", "Manager", "管理者");

	String roleType;

	String roleTypeNameViVn;
	String roleTypeNameEnUs;
	String roleTypeNameJaJp;

	private RoleType(String roleType, String roleTypeNameViVn, String roleTypeNameEnUs, String roleTypeNameJaJp) {
		this.roleType = roleType;
		this.roleTypeNameViVn = roleTypeNameViVn;
		this.roleTypeNameEnUs = roleTypeNameEnUs;
		this.roleTypeNameJaJp = roleTypeNameJaJp;
	}

	public String getRoleType() {
		return roleType;
	}

	public String getRoleTypeNameViVn() {
		return roleTypeNameViVn;
	}

	public void setRoleTypeNameViVn(String roleTypeNameViVn) {
		this.roleTypeNameViVn = roleTypeNameViVn;
	}

	public String getRoleTypeNameEnUs() {
		return roleTypeNameEnUs;
	}

	public void setRoleTypeNameEnUs(String roleTypeNameEnUs) {
		this.roleTypeNameEnUs = roleTypeNameEnUs;
	}

	public String getRoleTypeNameJaJp() {
		return roleTypeNameJaJp;
	}

	public void setRoleTypeNameJaJp(String roleTypeNameJaJp) {
		this.roleTypeNameJaJp = roleTypeNameJaJp;
	}
}
