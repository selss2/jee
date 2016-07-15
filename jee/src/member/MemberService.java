package member;

import global.CommonService;


public interface MemberService extends CommonService{
	public String regist(MemberBean mem);
	public MemberBean findById(String findID);
	public String update(MemberBean stu2);
	public String delete(MemberBean mem);
	public String login(MemberBean mem);
	public MemberBean getSession();
	String delete(String id);
	public MemberBean show();
}