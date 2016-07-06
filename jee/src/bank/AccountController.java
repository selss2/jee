package bank;

import javax.swing.JOptionPane;

import bank2.AccountBean;
import grade.GradeBean;

/**
 * @date :2016. 6. 15.
 * @author :오승준
 * @file :BankController.java
 * @story :
 */
public class AccountController {
	public static void main(String[] args) {
		
		AccountServiceImpl service = AccountServiceImpl. getInstance();
		
		// 1개설 2입금 3조회 4출금 5통장내역 6해지
		while (true) {
			switch (JOptionPane.showInputDialog("1개설 2입금 3조회 4출금 5통장내역 6해지")) {
			case "1":
				String input = JOptionPane.showInputDialog("이름,ID,PW");
				AccountBean bean = new AccountBean();
				String[] inputArr = input.split(",");
				bean.setAccountNo();
				bean.setName(inputArr[0]);
				bean.setId(inputArr[1]);
				bean.setPw(inputArr[2]);
				service.openAccount(bean);
				
//				GradeBean bean = new GradeBean();
//				 String input=JOptionPane.showInputDialog("과목,점수,seq");
//				 String[] inputArr = input.split(",");
//				 bean.setSubject(inputArr[0]);
//				 bean.setScore(Integer.parseInt(inputArr[1]));
//				 bean.setSeq(inputArr[2]);
//				 service.update(bean);
				 
				
				
				break;
			case "2":
				String inputMoney = JOptionPane.showInputDialog("입금액 ? ");
				// account.setMoney(Integer.parseInt(inputMoney));
				service.deposit(Integer.parseInt(inputMoney));
				break;
			case "3":
				// JOptionPane.showMessageDialog(null, service.findAccount());
				break;
			case "4":
				String output = JOptionPane.showInputDialog("출금액 ? ");
				service.withdraw(Integer.parseInt(output));
				JOptionPane.showMessageDialog(null, service.withdraw(Integer.parseInt(output)));
				break;
			case "5":
				JOptionPane.showMessageDialog(null, service.showAccount());
				break;
			case "6":
				JOptionPane.showMessageDialog(null, service.deleteAccount());
				break;
			case "0":
				JOptionPane.showConfirmDialog(null, "종료하시겠습니까?");
				return;
			}
		}
	}
}