package org.enterprise.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author KHIEMTD
 */
@Entity
@Table(name = "MST_ROLE")
public class MstRole implements Serializable {

	/**
	 * Serial version UID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Role ID
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ROLE_ID")
	private Integer roleId;

	/**
	 * Role Type
	 */
	@Column(name = "ROLE_TYPE", length = 25, unique = true, nullable = false)
	private String roleType = RoleType.SHOUKAISHA.getRoleType();

	public Integer getRoleId() {
		return roleId;
	}

	public String getRoleType() {
		return roleType;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}

	@Override
	public int hashCode() {
		int result = 1;
		final int prime = 31;
		result = prime * result + (roleId == null ? 0 : roleId.hashCode());
		result = prime * result + (roleType == null ? 0 : roleType.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (obj == null) {
			return false;
		}

		if (!(obj instanceof MstRole)) {
			return false;
		}

		MstRole other = (MstRole) obj;
		if (this.roleId == null) {
			if (other.roleId != null) {
				return false;
			}
		} else if (!this.roleId.equals(other.roleId)) {
			return false;
		}

		if (this.roleType == null) {
			if (other.roleType != null) {
				return false;
			}
		} else if (!this.roleType.equals(other.roleType)) {
			return false;
		}

		return true;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append(this.getClass().getName() + "= {" + "roleId:" + this.getRoleId() + ", roleName: " + this.getRoleType()
				+ "}");
		return sb.toString();
	}
}
