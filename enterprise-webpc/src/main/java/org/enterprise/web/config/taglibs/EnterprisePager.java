package org.enterprise.web.config.taglibs;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.enterprise.web.config.EnterpriseConfiguration;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 
 * @author KHIEMTD
 *
 */
public class EnterprisePager extends SimpleTagSupport {
	private Integer totalCount;
	private Integer currentPage;
	private String previousLabel;
	private String nextLabel;
	private String urlPath;
	private Integer limit;
	private Integer pagingSize;

	@Autowired
	EnterpriseConfiguration enterpriseConfiguration;

	@Override
	public void doTag() throws JspException, IOException {
		StringBuilder sb = new StringBuilder();
		if (totalCount > 0) {

			int totalPages = (totalCount % limit) == 0 ? (totalCount / limit) : (totalCount / limit) + 1;

			int genPages = pagingSize;
			if (genPages * limit > totalCount) {
				genPages = totalPages;
			}

			int pagingGroupCnt = (totalPages % pagingSize == 0) ? (totalPages / pagingSize)
					: (totalPages / pagingSize) + 1;

			int currentPageIndex = (currentPage % pagingSize == 0) ? (currentPage / pagingSize)
					: (currentPage / pagingSize) + 1;

			boolean lastPagesGroup = false;
			if ((currentPageIndex == pagingGroupCnt) && (currentPageIndex > 1)) {
				int totalAtLastPageGroup = totalCount - ((currentPageIndex - 1) * pagingSize) * limit;
				genPages = (totalAtLastPageGroup % limit) == 0 ? (totalAtLastPageGroup / limit)
						: (totalAtLastPageGroup / limit) + 1;
				lastPagesGroup = true;
			}
			sb.append("<ul class='pagination'>");
			
			if (totalCount > 0) {
				DecimalFormat dFormat = new DecimalFormat("#,##0");
				// Generate total record information
				sb.append("<li class='active'><a href='javascript:void(0)'><i class='fa fa-database'></i>" + dFormat.format(totalCount)+ "</a></li>");
			}

			if (currentPageIndex > 1) {
				int prevPageIndex = (currentPageIndex - 1) * pagingSize;
				sb.append("<li>");
				sb.append("<a href='" + urlPath + prevPageIndex + "'><i class='fa fa-chevron-left'></i>" + previousLabel
						+ "</a>");
				sb.append("<li>");
			}

			int count = 0;
			int pageNoLabel;
			while (count < genPages) {
				count++;
				pageNoLabel = ((currentPageIndex * genPages) - genPages + count);
				if (lastPagesGroup) {
					pageNoLabel = ((currentPageIndex * pagingSize) - pagingSize + count);
				}
				if (pageNoLabel == currentPage) {
					sb.append("<li class='active'><a href='javascript:void(0)'>" + pageNoLabel + "</a></li>");
				} else {
					sb.append("<li>");
					sb.append("<a href='" + urlPath + pageNoLabel + "'>" + pageNoLabel + "</a>");
					sb.append("</li>");
				}
			}

			if (currentPageIndex < pagingGroupCnt) {
				int nextPageIndex = (currentPageIndex * pagingSize) + 1;
				sb.append("<li>");
				sb.append("<a href='" + urlPath + nextPageIndex + "'>" + nextLabel
						+ "<i class='fa fa-chevron-right'></i></a>");
				sb.append("</li>");
			}
			sb.append("</ul>");
			getJspContext().getOut().write(sb.toString());
		}

	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getPreviousLabel() {
		return previousLabel;
	}

	public void setPreviousLabel(String previousLabel) {
		this.previousLabel = previousLabel;
	}

	public String getNextLabel() {
		return nextLabel;
	}

	public void setNextLabel(String nextLabel) {
		this.nextLabel = nextLabel;
	}

	public String getUrlPath() {
		return urlPath;
	}

	public void setUrlPath(String urlPath) {
		this.urlPath = urlPath;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getPagingSize() {
		return pagingSize;
	}

	public void setPagingSize(Integer pagingSize) {
		this.pagingSize = pagingSize;
	}
}
