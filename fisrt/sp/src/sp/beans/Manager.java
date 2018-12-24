package sp.beans;

import java.io.Serializable;

public class Manager implements Serializable{
	private static final long serialVersionUID = 6L;
    private Integer managerId;

    private String managerAccount;

    private String managerName;

    private Integer managerRoot;

    private String managerPassword;

    private String managerEmail;

    private String managerPhone;

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getManagerAccount() {
        return managerAccount;
    }

    public void setManagerAccount(String managerAccount) {
        this.managerAccount = managerAccount == null ? null : managerAccount.trim();
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName == null ? null : managerName.trim();
    }

    public Integer getManagerRoot() {
        return managerRoot;
    }

    public void setManagerRoot(Integer managerRoot) {
        this.managerRoot = managerRoot;
    }

    public String getManagerPassword() {
        return managerPassword;
    }

    public void setManagerPassword(String managerPassword) {
        this.managerPassword = managerPassword == null ? null : managerPassword.trim();
    }

    public String getManagerEmail() {
        return managerEmail;
    }

    public void setManagerEmail(String managerEmail) {
        this.managerEmail = managerEmail == null ? null : managerEmail.trim();
    }

    public String getManagerPhone() {
        return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone == null ? null : managerPhone.trim();
    }
}