package org.enterprise.service;

import java.util.List;

import org.enterprise.entity.MstRole;
/**
 * 
 * @author KHIEMTD
 *
 */
public interface RoleService {
	List<MstRole> getAllRoles();

	MstRole getByRoleId(Integer roleId);

	MstRole getByRoleType(String roleType);
}
