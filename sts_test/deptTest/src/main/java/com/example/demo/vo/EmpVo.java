package com.example.demo.vo;

import java.util.Date;

public class EmpVo{
	private int eno;
	private String ename;
	private String job;
	private int sal;
	private int comm;
	private int mgr;
	private Date hiredate;
	private int dno;
	private String email;
	private String jumin;
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public int getComm() {
		return comm;
	}
	public void setComm(int comm) {
		this.comm = comm;
	}
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
	}
	public EmpVo(int eno, String ename, String job, int sal, int comm, int mgr, Date hiredate, int dno, String email,
			String jumin) {
		super();
		this.eno = eno;
		this.ename = ename;
		this.job = job;
		this.sal = sal;
		this.comm = comm;
		this.mgr = mgr;
		this.hiredate = hiredate;
		this.dno = dno;
		this.email = email;
		this.jumin = jumin;
	}
	public EmpVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}