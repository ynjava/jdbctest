package com.product.register.dao;

import java.util.List;

import com.product.jdbc.dbhelper.JdbcHelper;
import com.product.register.service.RegisterService;

public class RegisterDao implements RegisterService {
	private JdbcHelper jdbcHelper = null;

	public RegisterDao() {
		// TODO Auto-generated constructor stub
		jdbcHelper = new JdbcHelper();
	}

	/*
	 * 完成用户对注册的Dao的编写
	 * 
	 * @see
	 * com.product.register.service.RegisterService#registerUser(java.util.List)
	 */
	@Override
	public boolean registerUser(List<Object> params) {
		// TODO Auto-generated method stub
		boolean flag = false;
		jdbcHelper.getConnection();
		String sql = "insert into userinfo(username, pswd, realname, title, content) values (?, ?, ?, ?, ?)";
		try {
			flag = jdbcHelper.updateByPreparedStatement(sql, params);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcHelper.releaseConn();
		}

		return flag;
	}

}
