/**
 * 
 */
package member;

/**
 * @date   :2016. 6. 30.
 * @author :오승준
 * @file   :MemberMain.java
 * @story  :
 */
public class MemberMain {
	public static void main(String[] args) {
		MemberBean m = new MemberBean();
		MemberBean m2 = new MemberBean();
		
		try {
			Class m3 = Class.forName("member.MemberBean");
			MemberBean m4 = (MemberBean) m3.newInstance();
			m.setId("hong");
			m.setName("홍길동");
			m.setPw("1");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(m.toString());
	}
}
