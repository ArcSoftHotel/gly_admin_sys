package cn.edu.zjut.action;

import cn.edu.zjut.po.User;
import cn.edu.zjut.service.UserService;

public class UserAction {
	private User loginUser;
	
	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public String execute() {
		UserService userServ = new UserService();
		if (userServ.login(loginUser)) {
			return "success";
		}
		return "fail";
	}
}