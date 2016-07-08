package member;
import java.util.List;

import bank.AccountServiceImpl;

public class MemberServiceImpl implements MemberService{
	
	MemberDAO dao = MemberDAO.getInstance();
	AccountServiceImpl accService = AccountServiceImpl.getInstance();
	
	MemberBean session;
	private static MemberServiceImpl instance = new MemberServiceImpl();
		public static MemberServiceImpl getInstance() {
		return instance;
	}

	
	private MemberServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String regist(MemberBean mem) {
		String msg = "";
		
		int result = dao.insert(mem);
		if (result==1) {
			msg = "회원가입 축하합니다";
		} else {
			msg = "회원가입 실패";
		}
		return msg;
	}

	@Override
	public String show() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String update(MemberBean mem) {
		String result = ""; 
		if (dao.update(mem) == 1) {
			result = "수정성공";
		} else {
			result = "수정실패";
		}
		return result;
	}

	@Override
	public String delete(String id) {
		String result = ""; 
		if (dao.delete(id) == 1) {
			result = "삭제성공";
		} else {
			result = "삭제실패";
		}
		return result;
	}


	@Override
	public int count() {
		// TODO Auto-generated method stub
		return dao.count();
	}


	@Override
	public MemberBean findById(String findID) {
		return dao.findById(findID);
	}


	@Override
	public List<MemberBean> list() {
		
		return dao.list();
	}

	@Override
		public String login(MemberBean member) {
			// 2.로그인
		String result = "";
				if (dao.login(member)) {
					result = "로그인성공";
					session = findById(member.getId());
					accService.map();
				}else{
					result = "로그인실패";
				}
			return result;
	}
}