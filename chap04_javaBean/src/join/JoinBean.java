package join;

public class JoinBean {
	private String userId;
	private String userPwd;
	private String userName;
	private String gender;
	private String email;
	
	private final String dbId ="hong";
	private final String dbPwd ="1234";
	
	public boolean check(){
		if(this.userId.equals(dbId)&&this.userPwd.equals(dbPwd)){
			return true;
		}else{
			return false;
		}
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
