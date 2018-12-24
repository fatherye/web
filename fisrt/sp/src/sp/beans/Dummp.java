package sp.beans;

import java.io.Serializable;

public class Dummp implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 2L;

	private Integer dummpId;

    private Integer userId;

    private Integer videoId;

    private Integer dummpTime;

    private String dummpText;

    private Integer dummpStatement;

    private String dummpColor;

    private Integer dummpPosition;

    private Integer dummpSize;
    
    private User user;
    
    

    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getDummpId() {
        return dummpId;
    }

    public void setDummpId(Integer dummpId) {
        this.dummpId = dummpId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    public Integer getDummpTime() {
        return dummpTime;
    }

    public void setDummpTime(Integer dummpTime) {
        this.dummpTime = dummpTime;
    }

    public String getDummpText() {
        return dummpText;
    }

    public void setDummpText(String dummpText) {
        this.dummpText = dummpText == null ? null : dummpText.trim();
    }

    public Integer getDummpStatement() {
        return dummpStatement;
    }

    public void setDummpStatement(Integer dummpStatement) {
        this.dummpStatement = dummpStatement;
    }

    public String getDummpColor() {
        return dummpColor;
    }

    public void setDummpColor(String dummpColor) {
        this.dummpColor = dummpColor == null ? null : dummpColor.trim();
    }

    public Integer getDummpPosition() {
        return dummpPosition;
    }

    public void setDummpPosition(Integer dummpPosition) {
        this.dummpPosition = dummpPosition;
    }

    public Integer getDummpSize() {
        return dummpSize;
    }

    public void setDummpSize(Integer dummpSize) {
        this.dummpSize = dummpSize;
    }
}