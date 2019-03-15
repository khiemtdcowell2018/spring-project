package org.enterprise.web.config.converter;

import org.apache.log4j.Logger;
import org.enterprise.entity.MstRole;
import org.enterprise.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class KenriToRoleConverter implements Converter<Object, MstRole> {

	private static final Logger logger = Logger.getLogger(KenriToRoleConverter.class);

	@Autowired
	RoleService roleService;

	@Override
	public MstRole convert(Object source) {
		Integer roleId = Integer.parseInt((String) source);
		MstRole role = roleService.getByRoleId(roleId);
		logger.info(role.toString());
		return role;
	}

}
