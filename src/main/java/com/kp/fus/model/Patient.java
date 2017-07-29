package com.kp.fus.model;
public class Patient {
    private Integer id;

    private Integer ticketNo;

    private Integer patientNo;

    private Integer patientId;

    private String patientName;

    private Integer patientSex;

    private Integer patientAge;

    private String patientCareer;

    private String patientContact;

    private String siteHome;

    private String siteWork;

    private String patientEducation;

    private String patientMarried;

    private String patientChild;

    private String patientEconomy;

    private String patientPayMode;

    private String patientGroup;

    private String createTime;

    private String updateTime;

    private String operator;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTicketNo() {
        return ticketNo;
    }

    public void setTicketNo(Integer ticketNo) {
        this.ticketNo = ticketNo;
    }

    public Integer getPatientNo() {
        return patientNo;
    }

    public void setPatientNo(Integer patientNo) {
        this.patientNo = patientNo;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName == null ? null : patientName.trim();
    }

    public Integer getPatientSex() {
        return patientSex;
    }

    public void setPatientSex(Integer patientSex) {
        this.patientSex = patientSex;
    }

    public Integer getPatientAge() {
        return patientAge;
    }

    public void setPatientAge(Integer patientAge) {
        this.patientAge = patientAge;
    }

    public String getPatientCareer() {
        return patientCareer;
    }

    public void setPatientCareer(String patientCareer) {
        this.patientCareer = patientCareer == null ? null : patientCareer.trim();
    }

    public String getPatientContact() {
        return patientContact;
    }

    public void setPatientContact(String patientContact) {
        this.patientContact = patientContact == null ? null : patientContact.trim();
    }

    public String getSiteHome() {
        return siteHome;
    }

    public void setSiteHome(String siteHome) {
        this.siteHome = siteHome == null ? null : siteHome.trim();
    }

    public String getSiteWork() {
        return siteWork;
    }

    public void setSiteWork(String siteWork) {
        this.siteWork = siteWork == null ? null : siteWork.trim();
    }

    public String getPatientEducation() {
        return patientEducation;
    }

    public void setPatientEducation(String patientEducation) {
        this.patientEducation = patientEducation == null ? null : patientEducation.trim();
    }

    public String getPatientMarried() {
        return patientMarried;
    }

    public void setPatientMarried(String patientMarried) {
        this.patientMarried = patientMarried == null ? null : patientMarried.trim();
    }

    public String getPatientChild() {
        return patientChild;
    }

    public void setPatientChild(String patientChild) {
        this.patientChild = patientChild == null ? null : patientChild.trim();
    }

    public String getPatientEconomy() {
        return patientEconomy;
    }

    public void setPatientEconomy(String patientEconomy) {
        this.patientEconomy = patientEconomy == null ? null : patientEconomy.trim();
    }

    public String getPatientPayMode() {
        return patientPayMode;
    }

    public void setPatientPayMode(String patientPayMode) {
        this.patientPayMode = patientPayMode == null ? null : patientPayMode.trim();
    }

    public String getPatientGroup() {
        return patientGroup;
    }

    public void setPatientGroup(String patientGroup) {
        this.patientGroup = patientGroup == null ? null : patientGroup.trim();
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator == null ? null : operator.trim();
    }

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
}