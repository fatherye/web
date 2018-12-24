package sp.beans;

import java.io.Serializable;

public class Videokind implements Serializable{
	private static final long serialVersionUID = 13L;
    private Integer videokindId;

    private String videokindName;

    public Integer getVideokindId() {
        return videokindId;
    }

    public void setVideokindId(Integer videokindId) {
        this.videokindId = videokindId;
    }

    public String getVideokindName() {
        return videokindName;
    }

    public void setVideokindName(String videokindName) {
        this.videokindName = videokindName == null ? null : videokindName.trim();
    }
}