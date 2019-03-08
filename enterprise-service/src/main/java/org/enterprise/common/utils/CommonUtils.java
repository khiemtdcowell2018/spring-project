package org.enterprise.common.utils;

/**
 * 
 * @author KHIEMTD
 *
 */
public class CommonUtils {

	/**
	 * Calculate and export first result and max result using for get list with paging indicator
	 * @param pageIndex
	 * 			Current page index
	 * @param totalRecord
	 * 			Total records from table in database
	 * @param pageSize
	 * 			Number of records indicate for display one page
	 * @return
	 * 			array[0]: firstResult, array[1] maxResult
	 */
	public static Integer[] pagingCalculated(int pageIndex, int totalRecord, int pageSize) {
		Integer[] result = new Integer[2];
		Integer firstResult = 0;
		Integer maxResult = pageSize;
		if (pageIndex < 1) {
			firstResult = 0;
			if (totalRecord < pageSize) {
				maxResult = totalRecord;
			} else {
				maxResult = pageSize;
			}
		} else if ((pageIndex * pageSize) > totalRecord) {
			maxResult = totalRecord;
			firstResult = pageSize * (totalRecord/pageSize); 
		} else {
			firstResult = pageIndex * pageSize - pageSize;
			maxResult = pageSize;
		}
		result[0] = firstResult;
		result[1] = maxResult;
		return result;
	}
}
