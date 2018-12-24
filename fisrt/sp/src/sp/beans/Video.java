package sp.beans;

import java.io.Serializable;
import java.util.Date;

public class Video implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 12L;

	private Integer videoId;

    private String videoName;

    private Integer videoCount;

    private Integer videoStatement;

    private Date videoDate;

    private Integer userId;

    private Integer videokindId;

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName == null ? null : videoName.trim();
    }

    public Integer getVideoCount() {
        return videoCount;
    }

    public void setVideoCount(Integer videoCount) {
        this.videoCount = videoCount;
    }

    public Integer getVideoStatement() {
        return videoStatement;
    }

    public void setVideoStatement(Integer videoStatement) {
        this.videoStatement = videoStatement;
    }

    public Date getVideoDate() {
        return videoDate;
    }

    public void setVideoDate(Date videoDate) {
        this.videoDate = videoDate;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getVideokindId() {
        return videokindId;
    }

    public void setVideokindId(Integer videokindId) {
        this.videokindId = videokindId;
    }
}