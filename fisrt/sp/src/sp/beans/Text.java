package sp.beans;

import java.io.Serializable;
import java.util.Date;

public class Text implements Serializable{
	private static final long serialVersionUID = 8L;
    private Integer textId;

    private String textHead;

    private Integer textStatement;

    private Integer userId;

    private Integer textCount;

    private Date textDate;

    private String textContext;
    
    private UserWithBLOBs userWithBLOBs;
    
    public UserWithBLOBs getUserWithBLOBs() {
		return userWithBLOBs;
	}

	public void setUserWithBLOBs(UserWithBLOBs userWithBLOBs) {
		this.userWithBLOBs = userWithBLOBs;
	}

	

    public Integer getTextId() {
        return textId;
    }

    public void setTextId(Integer textId) {
        this.textId = textId;
    }

    public String getTextHead() {
        return textHead;
    }

    public void setTextHead(String textHead) {
        this.textHead = textHead == null ? null : textHead.trim();
    }

    public Integer getTextStatement() {
        return textStatement;
    }

    public void setTextStatement(Integer textStatement) {
        this.textStatement = textStatement;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTextCount() {
        return textCount;
    }

    public void setTextCount(Integer textCount) {
        this.textCount = textCount;
    }

    public Date getTextDate() {
        return textDate;
    }

    public void setTextDate(Date textDate) {
        this.textDate = textDate;
    }

    public String getTextContext() {
        return textContext;
    }

    public void setTextContext(String textContext) {
        this.textContext = textContext == null ? null : textContext.trim();
    }
}