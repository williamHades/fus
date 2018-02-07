package com.kp.fus.model;
public class ConSymptomChn {
    private Integer id;

    private String ticketId;

    private String recordId;

    private String stoolTimes;

    private String stoolType;

    private String stoolGood;
    
    private String coldAfraid;

    private String coldLimb;

    private String heaveLimb;

    private String halitosis;

    private String thirsty;

    private String poorAppetite;

    private String weary;

    private String poorTalk;

    private String allHot;

    private String distress;
    
    private String vexation;
    
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

    public String getStoolTimes() {
        return stoolTimes;
    }

    public void setStoolTimes(String stoolTimes) {
        this.stoolTimes = stoolTimes == null ? null : stoolTimes.trim();
    }

    public String getStoolType() {
        return stoolType;
    }

    public void setStoolType(String stoolType) {
        this.stoolType = stoolType == null ? null : stoolType.trim();
    }

    public String getColdAfraid() {
        return coldAfraid;
    }

    public void setColdAfraid(String coldAfraid) {
        this.coldAfraid = coldAfraid == null ? null : coldAfraid.trim();
    }

    public String getHeaveLimb() {
        return heaveLimb;
    }

    public void setHeaveLimb(String heaveLimb) {
        this.heaveLimb = heaveLimb == null ? null : heaveLimb.trim();
    }

    public String getHalitosis() {
        return halitosis;
    }

    public void setHalitosis(String halitosis) {
        this.halitosis = halitosis == null ? null : halitosis.trim();
    }

    public String getThirsty() {
        return thirsty;
    }

    public void setThirsty(String thirsty) {
        this.thirsty = thirsty == null ? null : thirsty.trim();
    }

    public String getPoorAppetite() {
        return poorAppetite;
    }

    public void setPoorAppetite(String poorAppetite) {
        this.poorAppetite = poorAppetite == null ? null : poorAppetite.trim();
    }

    public String getWeary() {
        return weary;
    }

    public void setWeary(String weary) {
        this.weary = weary == null ? null : weary.trim();
    }

    public String getPoorTalk() {
        return poorTalk;
    }

    public void setPoorTalk(String poorTalk) {
        this.poorTalk = poorTalk == null ? null : poorTalk.trim();
    }

    public String getAllHot() {
        return allHot;
    }

    public void setAllHot(String allHot) {
        this.allHot = allHot == null ? null : allHot.trim();
    }

    public String getDistress() {
        return distress;
    }

    public void setDistress(String distress) {
        this.distress = distress == null ? null : distress.trim();
    }

	public String getColdLimb() {
		return coldLimb;
	}

	public void setColdLimb(String coldLimb) {
		this.coldLimb = coldLimb;
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

	public String getStoolGood() {
		return stoolGood;
	}

	public void setStoolGood(String stoolGood) {
		this.stoolGood = stoolGood;
	}

	public String getVexation() {
		return vexation;
	}

	public void setVexation(String vexation) {
		this.vexation = vexation;
	}
}