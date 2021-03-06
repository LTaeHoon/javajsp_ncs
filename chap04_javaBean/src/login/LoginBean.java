package login;

/*
 * java bean : DB테이블의 칼럼과 관련있는 클래스
 * 구성요소 : 멤버변수(private), Setter/Getter
 */
public class LoginBean {
	
	private String userId;
	private String userPwd;
	
	// db 대신 id/pwd
	private final String dbId = "scott";
	private final String dbPwd = "tiger";
	
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

}
