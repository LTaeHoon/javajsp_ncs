package R;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;

public class Rjava {

	public static void main(String[] args) throws RserveException, REXPMismatchException {
		// R 연결객체 생성
		RConnection rcon = new RConnection(); // R 연동 객체
		REXP x = rcon.eval("104+200");  //R 스크립트 작성
		int num_x = x.asInteger(); //숫자 형변환
		System.out.println("num_x :"+num_x);
		String str_x = x.asString(); // 문자 형변환
		System.out.println("str_x:"+str_x);
	}

}