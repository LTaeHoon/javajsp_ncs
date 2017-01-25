package product;

import java.util.Hashtable;

public class ProductSearch {
	Hashtable<String, String> table = null;
	
	public ProductSearch(){
		table = new Hashtable<String, String>();
		table.put("냉장고", "동급 최강 냉장고");
		table.put("세탁기", "최강 iot 기술 적용 세탁기");
		table.put("HDTV", "동급 최저 금액 고화질 TV");
	}
	
	//상품명으로 상품정보 반환 메서드
	public String psearch(String productName){
		String productInfo = (String)table.get(productName);
		return productInfo;
		
	}
}
