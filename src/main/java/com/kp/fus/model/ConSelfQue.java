package com.kp.fus.model;

public class ConSelfQue {
    private Integer id;

    private String ticketId;

    private String recordId;

    private String stoolSolid;

    private String stoolNumLess;

    private String stoolTimesLess;

    private String stoolHard;

    private String stoolHurt;

    private String stoolEndless;

    private String stoolHardOut;

    private String hemoproctia;

    private String rectalBurning;

    private String stomachache;

    private String cramping;
    
    private String turgor;
    
    private String score;

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

    public String getStoolSolid() {
        return stoolSolid;
    }

    public void setStoolSolid(String stoolSolid) {
        this.stoolSolid = stoolSolid == null ? null : stoolSolid.trim();
    }

    public String getStoolNumLess() {
        return stoolNumLess;
    }

    public void setStoolNumLess(String stoolNumLess) {
        this.stoolNumLess = stoolNumLess == null ? null : stoolNumLess.trim();
    }

    public String getStoolTimesLess() {
        return stoolTimesLess;
    }

    public void setStoolTimesLess(String stoolTimesLess) {
        this.stoolTimesLess = stoolTimesLess == null ? null : stoolTimesLess.trim();
    }

    public String getStoolHard() {
        return stoolHard;
    }

    public void setStoolHard(String stoolHard) {
        this.stoolHard = stoolHard == null ? null : stoolHard.trim();
    }

    public String getStoolHurt() {
        return stoolHurt;
    }

    public void setStoolHurt(String stoolHurt) {
        this.stoolHurt = stoolHurt == null ? null : stoolHurt.trim();
    }

    public String getStoolEndless() {
        return stoolEndless;
    }

    public void setStoolEndless(String stoolEndless) {
        this.stoolEndless = stoolEndless == null ? null : stoolEndless.trim();
    }

    public String getStoolHardOut() {
        return stoolHardOut;
    }

    public void setStoolHardOut(String stoolHardOut) {
        this.stoolHardOut = stoolHardOut == null ? null : stoolHardOut.trim();
    }

    public String getHemoproctia() {
        return hemoproctia;
    }

    public void setHemoproctia(String hemoproctia) {
        this.hemoproctia = hemoproctia == null ? null : hemoproctia.trim();
    }

    public String getRectalBurning() {
        return rectalBurning;
    }

    public void setRectalBurning(String rectalBurning) {
        this.rectalBurning = rectalBurning == null ? null : rectalBurning.trim();
    }

    public String getStomachache() {
        return stomachache;
    }

    public void setStomachache(String stomachache) {
        this.stomachache = stomachache == null ? null : stomachache.trim();
    }

    public String getCramping() {
        return cramping;
    }

    public void setCramping(String cramping) {
        this.cramping = cramping == null ? null : cramping.trim();
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score == null ? null : score.trim();
    }

	public String getTurgor() {
		return turgor;
	}

	public void setTurgor(String turgor) {
		this.turgor = turgor;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getCreateTime() {
		return createTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}
}