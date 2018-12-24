package sp.beans;

public class UserWithBLOBs extends User {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 11L;

	private String userAddress;

    private String userImage;

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage == null ? null : userImage.trim();
    }
}