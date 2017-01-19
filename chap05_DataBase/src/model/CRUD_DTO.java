package model;

//CRUD : Create,Read,Update,Delete
/*
 * DTO : 데이터 전송 객체 생성: table의 칼럼과 대응되는 객체 생성
 */
public class CRUD_DTO {
	private String id;
	private String passwd;
	private String name;
	private String reg_date;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
