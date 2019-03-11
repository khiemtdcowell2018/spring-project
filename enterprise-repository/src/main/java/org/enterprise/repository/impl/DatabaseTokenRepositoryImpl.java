package org.enterprise.repository.impl;

import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.apache.log4j.Logger;
import org.enterprise.entity.RememberLogin;
import org.enterprise.repository.AbstractDao;
import org.springframework.security.web.authentication.rememberme.PersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author KHIEMTD
 *
 */
@Repository
@Transactional
public class DatabaseTokenRepositoryImpl extends AbstractDao<String, RememberLogin>
		implements PersistentTokenRepository {

	private static final Logger logger = Logger.getLogger(DatabaseTokenRepositoryImpl.class);

	@Override
	public void createNewToken(PersistentRememberMeToken token) {
		logger.info("New token for user[" + token.getUsername() + "] is creating...");
		RememberLogin loginTokenSave = new RememberLogin();
		loginTokenSave.setSeriesNumber(token.getSeries());
		loginTokenSave.setLoginId(token.getUsername());
		loginTokenSave.setTokenCode(token.getTokenValue());
		loginTokenSave.setLastUsed(token.getDate());
		this.persist(loginTokenSave);
		logger.info("New token of user[" + token.getUsername() + "] has stored");
	}

	@Override
	public void updateToken(String series, String tokenValue, Date lastUsed) {
		RememberLogin loginTokenSaved = this.getByKey(series);
		if (loginTokenSaved != null) {
			logger.info("Update token for series number[" + series + "]");
			loginTokenSaved.setTokenCode(tokenValue);
			loginTokenSaved.setLastUsed(lastUsed);
			update(loginTokenSaved);
		}
	}

	@Override
	public PersistentRememberMeToken getTokenForSeries(String seriesId) {
		logger.info("Get token for series number[" + seriesId + "] is processing...");
		PersistentRememberMeToken token = null;
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<RememberLogin> cQuery = cBuilder.createQuery(RememberLogin.class);
		Root<RememberLogin> root = cQuery.from(RememberLogin.class);
		cQuery.select(root).where(cBuilder.equal(root.get("seriesNumber"), seriesId));
		RememberLogin databaseSavedToken = this.getSession().createQuery(cQuery).uniqueResult();
		if (databaseSavedToken != null) {
			token = new PersistentRememberMeToken(databaseSavedToken.getLoginId(), databaseSavedToken.getSeriesNumber(),
					databaseSavedToken.getTokenCode(), databaseSavedToken.getLastUsed());
			return token;
		} else {
			logger.error("Series number[" + seriesId + "] is not existed...");
			return null;
		}
	}

	@Override
	public void removeUserTokens(String username) {
		CriteriaBuilder cBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<RememberLogin> cQuery = cBuilder.createQuery(RememberLogin.class);
		Root<RememberLogin> root = cQuery.from(RememberLogin.class);
		cQuery.select(root).where(cBuilder.equal(root.get("loginId"), username));
		List<RememberLogin> databaseSavedTokens = this.getSession().createQuery(cQuery).getResultList();
		logger.info("Remove login tokens of login id[" + username + "] is processing...");
		for (RememberLogin rememberLogin : databaseSavedTokens) {
			delete(rememberLogin);
		}
		logger.info("Tokens of login id[" + username + "] had removed");
	}

}
