package com.kp.fus.model;
public class GerQScore {
    private Integer id;

    private String ticketId;

    private String recordId;

    private String heartBurn;

    private String palirrhea;

    private String epigastricPain;

    private String nausea;

    private String dyssomnia;

    private String isOtc;

    private String createTime;

    private String updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId == null ? null : ticketId.trim();
    }

    public String getRecordId() {
        return recordId;
    }

    public void setRecordId(String recordId) {
        this.recordId = recordId == null ? null : recordId.trim();
    }

    public String getHeartBurn() {
        return heartBurn;
    }

    public void setHeartBurn(String heartBurn) {
        this.heartBurn = heartBurn == null ? null : heartBurn.trim();
    }

    public String getPalirrhea() {
        return palirrhea;
    }

    public void setPalirrhea(String palirrhea) {
        this.palirrhea = palirrhea == null ? null : palirrhea.trim();
    }

    public String getEpigastricPain() {
        return epigastricPain;
    }

    public void setEpigastricPain(String epigastricPain) {
        this.epigastricPain = epigastricPain == null ? null : epigastricPain.trim();
    }

    public String getNausea() {
        return nausea;
    }

    public void setNausea(String nausea) {
        this.nausea = nausea == null ? null : nausea.trim();
    }

    public String getDyssomnia() {
        return dyssomnia;
    }

    public void setDyssomnia(String dyssomnia) {
        this.dyssomnia = dyssomnia == null ? null : dyssomnia.trim();
    }

    public String getIsOtc() {
        return isOtc;
    }

    public void setIsOtc(String isOtc) {
        this.isOtc = isOtc == null ? null : isOtc.trim();
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