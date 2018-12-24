package sp.beans;

import java.io.Serializable;

public class Gift implements Serializable{
	private static final long serialVersionUID = 3L;
    private Integer giftId;

    private String giftName;

    private Integer giftGrade;

    private String giftImage;

    public Integer getGiftId() {
        return giftId;
    }

    public void setGiftId(Integer giftId) {
        this.giftId = giftId;
    }

    public String getGiftName() {
        return giftName;
    }

    public void setGiftName(String giftName) {
        this.giftName = giftName == null ? null : giftName.trim();
    }

    public Integer getGiftGrade() {
        return giftGrade;
    }

    public void setGiftGrade(Integer giftGrade) {
        this.giftGrade = giftGrade;
    }

    public String getGiftImage() {
        return giftImage;
    }

    public void setGiftImage(String giftImage) {
        this.giftImage = giftImage == null ? null : giftImage.trim();
    }
}