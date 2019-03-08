package org.enterprise.service;

import java.util.List;

import org.enterprise.entity.MstUser;
/**
 * 
 * @author KHIEMTD
 *
 */
public interface UserService {
	List<MstUser> getAllUsers(boolean isGetRoles);

	List<MstUser> getAllUsersWithPager(boolean isGetRoles, int pageIndex, int pageSize);

	MstUser getByUserId(Integer id);

	MstUser getByLoginId(String loginId);

	Integer getTotalCount();

	void addNewUser(MstUser mstUser);

	void updateUser(MstUser mstUser);

	void removeUser(String loginId);
}
