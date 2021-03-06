package com.org.mntr.dto;
// default package

// Generated 11-Aug-2017 16:11:48 by Hibernate Tools 5.2.3.Final

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.org.mntr.constants.SSValidationConfig;

/**
 * UserRoleDto generated by hbm2java
 */
public class UserRoleDto implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long roleId;

	@NotNull
	@NotEmpty
	@NotBlank
	@Size(min = SSValidationConfig.textGeneralMin, max = SSValidationConfig.textGeneralMax)
	private String roleName;

	private String description;

	@NotNull
	private Integer status;
	private String createdBy;
	@DateTimeFormat(pattern = SSValidationConfig.appDateFormat)
	private Date createdDt;
	private String modifiedBy;
	@DateTimeFormat(pattern = SSValidationConfig.appDateFormat)
	private Date modifiedDt;

	public UserRoleDto() {
	}

	public UserRoleDto(String roleName, Integer status, String createdBy, Date createdDt, String modifiedBy,
			Date modifiedDt) {
		this.roleName = roleName;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDt = createdDt;
		this.modifiedBy = modifiedBy;
		this.modifiedDt = modifiedDt;
	}

	public Long getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCreatedBy() {
		return this.createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDt() {
		return this.createdDt;
	}

	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}

	public String getModifiedBy() {
		return this.modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getModifiedDt() {
		return this.modifiedDt;
	}

	public void setModifiedDt(Date modifiedDt) {
		this.modifiedDt = modifiedDt;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
