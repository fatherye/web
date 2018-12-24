package sp.beans;

import java.io.Serializable;

public class Userpay implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 10L;

	private String userpayid;

    private Integer userid;

    private Integer userpaymoney;

    public String getUserpayid() {
        return userpayid;
    }

    public void setUserpayid(String userpayid) {
        this.userpayid = userpayid == null ? null : userpayid.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getUserpaymoney() {
        return userpaymoney;
    }

    public void setUserpaymoney(Integer userpaymoney) {
        this.userpaymoney = userpaymoney;
    }
}