package pro;

public class ProductBean {
	private String sabun;
	private String saname;
	private String procode;
	private String proname;
	private int price;
	
	/* 사번과 이름 DB */
	final String dbbun[] = {"k201701","k201702","k201703"};
	final String dbname[] = {"홍길동", "이순신", "유관순"};
	
	public boolean check(){
		for(int i = 0; i < dbbun.length; i++){
			if(sabun.equals(dbbun[i]) && saname.equals(dbname[i])){
				return true;
			}
		}
		return false;
	}
	
	public String getSabun() {
		return sabun;
	}

	public void setSabun(String sabun) {
		this.sabun = sabun;
	}

	public String getSaname() {
		return saname;
	}

	public void setSaname(String saname) {
		this.saname = saname;
	}

	public String getProcode() {
		return procode;
	}

	public void setProcode(String procode) {
		this.procode = procode;
	}

	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
