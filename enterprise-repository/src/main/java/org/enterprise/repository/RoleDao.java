package org.enterprise.repository;

import java.util.List;

import org.enterprise.entity.MstRole;

/**
 * 
 * @author KHIEMTD
 *
 */
public interface RoleDao {
	List<MstRole> findAll();

	MstRole findById(Integer roleId);

	MstRole findByType(String roleType);
}
