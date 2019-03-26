package org.enterprise.web.config;

public class EnterpriseConfiguration {
	private Integer pagesLimit;
	private Integer pagesInPagerLimit;
	private String mailFrom;

	public Integer getPagesLimit() {
		return pagesLimit;
	}

	public void setPagesLimit(Integer pagesLimit) {
		this.pagesLimit = pagesLimit;
	}

	public Integer getPagesInPagerLimit() {
		return pagesInPagerLimit;
	}

	public void setPagesInPagerLimit(Integer pagesInPagerLimit) {
		this.pagesInPagerLimit = pagesInPagerLimit;
	}

	public String getMailFrom() {
		return mailFrom;
	}
	public void setMailFrom(String mailFrom) {
		this.mailFrom = mailFrom;
	}
}
