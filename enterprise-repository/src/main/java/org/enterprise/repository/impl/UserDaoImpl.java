package org.enterprise.repository.impl;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Hibernate;
import org.enterprise.entity.MstUser;
import org.enterprise.repository.AbstractDao;
import org.enterprise.repository.UserDao;
import org.springframework.stereotype.Repository;
/**
 * 
 * @author KHIEMTD
 *
 */
@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, MstUser> implements UserDao {

	public List<MstUser> findAll(boolean isGetRoles) {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MstUser> cQuery = cBuilder.createQuery(MstUser.class);
		Root<MstUser> root = cQuery.from(MstUser.class);
		cQuery.select(root).orderBy(cBuilder.desc(root.get("userId")));
		List<MstUser> result = this.getSession().createQuery(cQuery).getResultList();
		if (isGetRoles) {
			for (MstUser mstUser : result) {
				Hibernate.initialize(mstUser.getRoles());
			}
		}
		return result;
	}

	public List<MstUser> findAllWithPager(boolean isGetRoles, int firstResult, int maxResult) {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MstUser> cQuery = cBuilder.createQuery(MstUser.class);
		Root<MstUser> root = cQuery.from(MstUser.class);
		cQuery.select(root).orderBy(cBuilder.desc(root.get("userId")));

		TypedQuery<MstUser> tQuery = this.getSession().createQuery(cQuery);
		tQuery.setFirstResult(firstResult);
		tQuery.setMaxResults(maxResult);

		List<MstUser> result = tQuery.getResultList();
		if (isGetRoles) {
			for (MstUser mstUser : result) {
				Hibernate.initialize(mstUser.getRoles());
			}
		}
		return result;
	}

	public MstUser findById(Integer id) {
		MstUser mstUser = this.getByKey(id);
		if (mstUser != null) {
			Hibernate.initialize(mstUser.getRoles());
		}
		return mstUser;
	}

	public MstUser findByLoginId(String loginId) {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MstUser> cQuery = cBuilder.createQuery(MstUser.class);
		Root<MstUser> root = cQuery.from(MstUser.class);
		cQuery.select(root).where(cBuilder.equal(root.get("loginId"), loginId));
		MstUser mstUser = this.getSession().createQuery(cQuery).uniqueResult();
		if (mstUser != null) {
			Hibernate.initialize(mstUser.getRoles());
		}
		return mstUser;
	}

	public Integer getTotalCount() {
		Long totalCount = 0l;
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<Long> cQuery = cBuilder.createQuery(Long.class);
		cQuery.select(cBuilder.count(cQuery.from(MstUser.class)));
		totalCount = this.getSession().createQuery(cQuery).getSingleResult();
		return totalCount.intValue();
	}

	public void insert(MstUser mstUser) {
		this.persist(mstUser);
	}

	public void update(MstUser mstUser) {
		this.update(mstUser);
	}

	public void deleteByLoginId(String loginId) {
		MstUser mstUser = this.findByLoginId(loginId);
		if (mstUser != null) {
			this.delete(mstUser);
		}
	}

	public MstUser findByEmail(String emailAddress) {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MstUser> cQuery = cBuilder.createQuery(MstUser.class);
		Root<MstUser> root = cQuery.from(MstUser.class);
		cQuery.select(root).where(cBuilder.equal(root.get("mailAddress"), emailAddress));
		return this.getSession().createQuery(cQuery).uniqueResult();
	}

}
