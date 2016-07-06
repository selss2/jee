package member;
import java.util.List;

public interface MemberService {
	public String regist(MemberBean mem);
	public String show();
	public String update(MemberBean stu2);
	public String delete(String string);
	public int count();
	public MemberBean findById(String findID);
	public List<MemberBean> list();
}