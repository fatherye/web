package sp.beans;

import java.io.Serializable;

public class GiftkeeperKey implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 5L;

	private Integer giftId;

    private Integer userId;

    public Integer getGiftId() {
        return giftId;
    }

    public void setGiftId(Integer giftId) {
        this.giftId = giftId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}