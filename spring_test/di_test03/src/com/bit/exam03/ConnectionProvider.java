package com.bit.exam03;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	private String driver;
	private String url;
	private String user;
	private String pwd;

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
}
