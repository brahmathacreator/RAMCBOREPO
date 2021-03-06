package com.org.mntr.jpa.specs;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;

import com.org.mntr.constants.StatusConstants;
import com.org.mntr.entity.UserRole;

@Component("roleSpec")
public class RoleSpec {

	public Specification<UserRole> isActiveAndExcludeId(final Long roleId) {
		return new Specification<UserRole>() {
			@Override
			public Predicate toPredicate(Root<UserRole> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.and(cb.equal(root.get("status"), StatusConstants.active),
						cb.notEqual(root.get("roleId"), roleId));
			}
		};
	}

	public Specification<UserRole> excludeId(final Long roleId) {
		return new Specification<UserRole>() {
			@Override
			public Predicate toPredicate(Root<UserRole> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				query.orderBy(cb.desc(root.get("createdDt")));
				return cb.notEqual(root.get("roleId"), roleId);
			}
		};
	}

	public Specification<UserRole> isActive(final Long roleId) {
		return new Specification<UserRole>() {
			@Override
			public Predicate toPredicate(Root<UserRole> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.equal(root.get("status"), StatusConstants.active);
			}
		};
	}

}
