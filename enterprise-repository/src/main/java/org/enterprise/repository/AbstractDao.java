package org.enterprise.repository;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 
 * @author KHIEMTD
 *
 * @param <PK> Primary key of the model class
 * @param <T> Entity object
 */
public abstract class AbstractDao<PK extends Serializable, T> {

	private final Class<T> persistentClass;

	@SuppressWarnings("unchecked")
	public AbstractDao() {
		this.persistentClass = 
				(Class<T>) 
					((ParameterizedType) 
						this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
	}

	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public T getByKey(PK key) {
		return (T) this.getSession().get(persistentClass, key);
	}

	public void persist(T entity) {
		this.getSession().persist(entity);
	}

	public void update(T entity) {
		this.getSession().update(entity);
	}

	public void delete(T entity) {
		this.getSession().delete(entity);
	}
}
