package cn.edu.zjut.service;

import java.util.List;

import cn.edu.zjut.dao.UserDAO;
import cn.edu.zjut.po.User;

public class UserService {
	public boolean login(User loginUser) {
		String account = loginUser.getAccount();
		String password = loginUser.getPassword();
		String usertype = loginUser.getUsertype();
		String hql = "from User as user where account='" + account + "' and password='" + password + "' and "
				+ "usertype='" + usertype +"'";
		UserDAO dao = new UserDAO();
		List list = dao.findByHql(hql);
		if (list.isEmpty())
			return false;
		else
			return true;
	}
}