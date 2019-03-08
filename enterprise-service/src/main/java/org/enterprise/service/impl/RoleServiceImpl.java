package org.enterprise.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.enterprise.entity.MstRole;
import org.enterprise.repository.RoleDao;
import org.enterprise.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * @author KHIEMTD
 *
 */
@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;

	@Override
	public List<MstRole> getAllRoles() {
		return roleDao.findAll();
	}

	@Override
	public MstRole getByRoleId(Integer roleId) {
		return roleDao.findById(roleId);
	}

	@Override
	public MstRole getByRoleType(String roleType) {
		return roleDao.findByType(roleType);
	}

}
