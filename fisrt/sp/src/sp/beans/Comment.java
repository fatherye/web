package sp.beans;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer commentId;

    private Integer commentStatement;

    private Integer textId;

    private Integer userId;

    private Date commentDate;

    private String commentContext;
    
    private UserWithBLOBs userWithBLOBs;
    
    

    public UserWithBLOBs getUserWithBLOBs() {
		return userWithBLOBs;
	}

	public void setUserWithBLOBs(UserWithBLOBs userWithBLOBs) {
		this.userWithBLOBs = userWithBLOBs;
	}

	public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getCommentStatement() {
        return commentStatement;
    }

    public void setCommentStatement(Integer commentStatement) {
        this.commentStatement = commentStatement;
    }

    public Integer getTextId() {
        return textId;
    }

    public void setTextId(Integer textId) {
        this.textId = textId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    public String getCommentContext() {
        return commentContext;
    }

    public void setCommentContext(String commentContext) {
        this.commentContext = commentContext == null ? null : commentContext.trim();
    }
}