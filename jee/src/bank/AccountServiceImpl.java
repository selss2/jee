package bank;
import java.util.List;

public class AccountServiceImpl implements AccountService {

	private static AccountServiceImpl instans = new AccountServiceImpl();
	private AccountServiceImpl() {
	}
	
	public static AccountServiceImpl getInstance() {
		return instans;
	
	}

	@Override
	public void openAccount(AccountBean bean) {
	}

	@Override
	public void deposit(int inputMoney) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String withdraw(int output) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateAccount(AccountBean acc) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAccount() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<AccountBean> accountList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AccountBean findByAccountNo(String accNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AccountBean> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() {
		return 0;
	}

	
}