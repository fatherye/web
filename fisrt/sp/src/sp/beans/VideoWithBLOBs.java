package sp.beans;

import java.io.Serializable;

public class VideoWithBLOBs extends Video implements Serializable{
	private static final long serialVersionUID = 14L;
    private String videoUrl;

    private String videoImage;
    
    private UserWithBLOBs userWithBLOBs;
    
    private Videokind videokind;
    
    

    public UserWithBLOBs getUserWithBLOBs() {
		return userWithBLOBs;
	}

	public void setUserWithBLOBs(UserWithBLOBs userWithBLOBs) {
		this.userWithBLOBs = userWithBLOBs;
	}

	public Videokind getVideokind() {
		return videokind;
	}

	public void setVideokind(Videokind videokind) {
		this.videokind = videokind;
	}

	public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl == null ? null : videoUrl.trim();
    }

    public String getVideoImage() {
        return videoImage;
    }

    public void setVideoImage(String videoImage) {
        this.videoImage = videoImage == null ? null : videoImage.trim();
    }
}