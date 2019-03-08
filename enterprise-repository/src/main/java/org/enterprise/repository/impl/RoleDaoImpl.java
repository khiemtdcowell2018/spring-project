package org.enterprise.repository.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.enterprise.entity.MstRole;
import org.enterprise.repository.AbstractDao;
import org.enterprise.repository.RoleDao;
import org.springframework.stereotype.Repository;

/**
 * 
 * @author KHIEMTD
 *
 */
@Repository("roleDao")
public class RoleDaoImpl extends AbstractDao<Integer, MstRole> implements RoleDao {

	public List<MstRole> findAll() {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MstRole> cQuery = cBuilder.createQuery(MstRole.class);
		Root<MstRole> root = cQuery.from(MstRole.class);
		cQuery.select(root).orderBy(cBuilder.asc(root.get("roleId")));
		return this.getSession().createQuery(cQuery).getResultList();
	}

	public MstRole findById(Integer roleId) {
		return this.getByKey(roleId);
	}

	public MstRole findByType(String roleType) {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MstRole> cQuery = cBuilder.createQuery(MstRole.class);
		Root<MstRole> root = cQuery.from(MstRole.class);
		cQuery.select(root).where(cBuilder.equal(root.get("roleType"), roleType));
		return this.getSession().createQuery(cQuery).getSingleResult();
	}

}
