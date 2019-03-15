package org.enterprise.repository;

import java.util.List;

import org.enterprise.entity.MstUser;

/**
 * 
 * @author KHIEMTD
 *
 */
public interface UserDao {
	List<MstUser> findAll(boolean isGetRoles);

	List<MstUser> findAllWithPager(boolean isGetRoles, int firstResult, int maxResult);

	MstUser findById(Integer id);

	MstUser findByLoginId(String loginId);

	Integer getTotalCount();

	void insert(MstUser mstUser);

	void update(MstUser mstUser);

	void deleteByLoginId(String loginId);

	MstUser findByEmail(String emailAddress);
}
