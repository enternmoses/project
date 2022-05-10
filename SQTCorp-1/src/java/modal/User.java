
package modal;

public class User {
    String userName;
    String password;
    String name;
    String avatar;
    String sex;
    String birthday;
    String phoneNumber;
    String email;
    String role;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public User() {
    }

    public User(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public User(String userName, String password, String name, String avatar, String sex, String birthday, String phoneNumber, String email, String role) {
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.avatar = avatar;
        this.sex = sex;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.role = role;
    }

    public User(String userName, String password, String avatar, String sex, String birthday, String role) {
        this.userName = userName;
        this.password = password;
        this.avatar = avatar;
        this.sex = sex;
        this.birthday = birthday;
        this.role = role;
    }

    public User(String userName, String password, String avatar, String sex, String birthday, String phoneNumber, String email, String role) {
        this.userName = userName;
        this.password = password;
        this.avatar = avatar;
        this.sex = sex;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.role = role;
    }

    public User(String userName, String password, String name, String role) {
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.role = role;
    }
    
    
}
