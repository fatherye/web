package sp.beans;

public class Giftkeeper extends GiftkeeperKey {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 4L;
	private Integer giftNumber;
    private Gift gift;
    
    

    public Gift getGift() {
		return gift;
	}

	public void setGift(Gift gift) {
		this.gift = gift;
	}

	public Integer getGiftNumber() {
        return giftNumber;
    }

    public void setGiftNumber(Integer giftNumber) {
        this.giftNumber = giftNumber;
    }
}