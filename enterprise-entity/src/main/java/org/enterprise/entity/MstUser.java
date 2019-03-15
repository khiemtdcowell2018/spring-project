package org.enterprise.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

/**
 * 
 * @author KHIEMTD
 *
 */
@Entity
@Table(name = "MST_USER")
public class MstUser implements Serializable {

	/**
	 * Serial version UID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "USER_ID")
	private Integer userId;

	@NotEmpty(message = "NotEmpty.mstUser.loginId")
	@Size(min = 5, max = 50, message="Size.mstUser.loginId")
	@Column(name = "LOGIN_ID", length = 50, unique = true, nullable = false)
	private String loginId;

	@NotEmpty(message = "NotEmpty.mstUser.loginPassword")
	@Size(min = 5, max = 100, message="Size.mstUser.loginPassword")
	@Column(name = "LOGIN_PASSWORD", length = 100, nullable = false)
	private String loginPassword;

	@NotEmpty(message = "NotEmpty.mstUser.nameMei")
	@Size(min = 1, max = 50, message="Size.mstUser.nameMei")
	@Column(name = "NAME_MEI", length = 50, nullable = false)
	private String nameMei;

	@NotEmpty(message = "NotEmpty.mstUser.nameSei")
	@Size(min = 1, max = 50, message="Size.mstUser.nameSei")
	@Column(name = "NAME_SEI", length = 50, nullable = false)
	private String nameSei;

	@NotEmpty(message = "NotEmpty.mstUser.mailAddress")
	@Size(min = 1, max = 50, message="Size.mstUser.mailAddress")
	@Column(name = "MAIL_ADDRESS", length = 50, nullable = false)
	private String mailAddress;

	@NotEmpty(message = "NotEmpty.mstUser.phoneNumber")
	@Size(min = 1, max = 50, message="Size.mstUser.phoneNumber")
	@Column(name = "PHONE_NUMBER", length = 20, unique = true, nullable = false)
	private String phoneNumber;

	@NotEmpty(message = "NotEmpty.mstUser.postNumber")
	@Size(min = 5, max = 10, message="Size.mstUser.postNumber")
	@Column(name = "POST_NUMBER", length = 10, nullable = false)
	private String postNumber;

	@NotEmpty(message = "NotEmpty.mstUser.homeAddress")
	@Size(min = 10, max = 100, message="Size.mstUser.homeAddress")
	@Column(name = "HOME_ADDRESS", length = 100, nullable = false)
	private String homeAddress;

	@NotEmpty(message = "NotEmpty.mstUser.roles")
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "KENRI", joinColumns = { @JoinColumn(name = "USER_ID") }, inverseJoinColumns = {
			@JoinColumn(name = "ROLE_ID") })
	private Set<MstRole> roles = new HashSet<MstRole>();

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getNameMei() {
		return nameMei;
	}

	public void setNameMei(String nameMei) {
		this.nameMei = nameMei;
	}

	public String getNameSei() {
		return nameSei;
	}

	public void setNameSei(String nameSei) {
		this.nameSei = nameSei;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPostNumber() {
		return postNumber;
	}

	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}

	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public Set<MstRole> getRoles() {
		return roles;
	}

	public void setRoles(Set<MstRole> roles) {
		this.roles = roles;
	}

	@Override
	public int hashCode() {
		int result = 1;
		final int prime = 31;
		result = prime * result + (userId == null ? 0 : userId.hashCode());
		result = prime * result + (loginId == null ? 0 : loginId.hashCode());
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

		if (!(obj instanceof MstUser)) {
			return false;
		}

		MstUser other = (MstUser) obj;
		if (this.userId == null) {
			if (other.userId != null) {
				return false;
			}
		} else if (!this.userId.equals(other.userId)) {
			return false;
		}

		if (this.loginId == null) {
			if (other.loginId != null) {
				return false;
			}
		} else if (!this.loginId.equals(other.loginId)) {
			return false;
		}

		return true;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append(this.getClass().getName() + "= {" + "userId:" + this.getUserId() + ", loginId: " + this.getLoginId()
				+ ", loginPassword: " + this.getLoginPassword() + ", nameMei: " + this.getNameMei() + ", nameSei: "
				+ this.getNameSei() + ", mailAddress: " + this.getMailAddress() + ", phoneNumber: "
				+ this.getPhoneNumber() + ", postNumber: " + this.getPostNumber() + ", homeAddress: "
				+ this.getHomeAddress() + ", roles:[ ");
		for (MstRole role : roles) {
			sb.append(role.toString());
			sb.append(", ");
		}
		sb.replace(sb.length() - 2, sb.length() - 1, ", ");
		sb.append("]}");
		return sb.toString();
	}
}
