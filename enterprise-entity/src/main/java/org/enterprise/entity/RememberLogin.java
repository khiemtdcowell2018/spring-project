package org.enterprise.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "remember_login")
public class RememberLogin implements Serializable {

	/**
	 * Serial version ID
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "SERIES_NUMBER", length = 64, nullable = false, unique = true)
	private String seriesNumber;

	@Column(name = "LOGIN_ID", length = 50, nullable = false)
	private String loginId;

	@Column(name = "TOKEN_CODE", length = 64, nullable = false)
	private String tokenCode;

	@Column(name = "LAST_USED", nullable = false)
	private Date lastUsed;

	public String getSeriesNumber() {
		return seriesNumber;
	}

	public void setSeriesNumber(String seriesNumber) {
		this.seriesNumber = seriesNumber;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getTokenCode() {
		return tokenCode;
	}

	public void setTokenCode(String tokenCode) {
		this.tokenCode = tokenCode;
	}

	public Date getLastUsed() {
		return lastUsed;
	}

	public void setLastUsed(Date lastUsed) {
		this.lastUsed = lastUsed;
	}
}
