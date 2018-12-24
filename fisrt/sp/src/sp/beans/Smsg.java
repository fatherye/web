package sp.beans;

import java.io.Serializable;
import java.util.Date;

public class Smsg implements Serializable{
	private static final long serialVersionUID = 7L;
    private Integer smsgId;

    private Integer smsgStatement;

    private Integer userId;

    private Date smsgDate;

    private String smsgText;

    public Integer getSmsgId() {
        return smsgId;
    }

    public void setSmsgId(Integer smsgId) {
        this.smsgId = smsgId;
    }

    public Integer getSmsgStatement() {
        return smsgStatement;
    }

    public void setSmsgStatement(Integer smsgStatement) {
        this.smsgStatement = smsgStatement;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getSmsgDate() {
        return smsgDate;
    }

    public void setSmsgDate(Date smsgDate) {
        this.smsgDate = smsgDate;
    }

    public String getSmsgText() {
        return smsgText;
    }

    public void setSmsgText(String smsgText) {
        this.smsgText = smsgText == null ? null : smsgText.trim();
    }
}