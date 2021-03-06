package com.org.mntr.dto;
// default package

// Generated 11-Aug-2017 16:11:48 by Hibernate Tools 5.2.3.Final

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.org.mntr.constants.SSValidationConfig;

/**
 * CategoryDto generated by hbm2java
 */
public class CategoryDto implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long categoryId;

	@NotNull
	@NotEmpty
	@NotBlank
	@Size(min = SSValidationConfig.textGeneralMin, max = SSValidationConfig.textGeneralMax)
	private String categoryName;

	@NotNull
	@NotEmpty
	@NotBlank
	@Size(min = SSValidationConfig.passGeneralMin, max = SSValidationConfig.passGeneralMax)
	@Pattern(regexp = SSValidationConfig.passGeneralPattern)
	private String masterPassword;

	@NotNull
	@NotEmpty
	@NotBlank
	private String categoryType;

	private String description;

	@NotNull
	private Integer status;
	private String createdBy;
	private String modifiedBy;
	@DateTimeFormat(pattern = SSValidationConfig.appDateFormat)
	private Date createdDt;
	@DateTimeFormat(pattern = SSValidationConfig.appDateFormat)
	private Date modifiedDt;

	public CategoryDto() {
	}

	public CategoryDto(String categoryName, String masterPassword, Integer status, String createdBy, String modifiedBy,
			Date createdDt, Date modifiedDt) {
		this.categoryName = categoryName;
		this.masterPassword = masterPassword;
		this.status = status;
		this.createdBy = createdBy;
		this.modifiedBy = modifiedBy;
		this.createdDt = createdDt;
		this.modifiedDt = modifiedDt;
	}

	public Long getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getMasterPassword() {
		return this.masterPassword;
	}

	public void setMasterPassword(String masterPassword) {
		this.masterPassword = masterPassword;
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

	public String getModifiedBy() {
		return this.modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getCreatedDt() {
		return this.createdDt;
	}

	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}

	public Date getModifiedDt() {
		return this.modifiedDt;
	}

	public void setModifiedDt(Date modifiedDt) {
		this.modifiedDt = modifiedDt;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategoryType() {
		return categoryType;
	}

	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}

}
