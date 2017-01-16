package chap02_Directive_Object;

// DB 연동 클래스
public class LoginDAO {
	private String db_id = "hong";
	private String db_pwd = "1234";
	
	public String login(String id, String pwd){
		if(id.equals(db_id)&&pwd.equals(db_pwd)){
			return "로그인 성공";
		}else{
			return "로그인 실패";
		}
	}
}
