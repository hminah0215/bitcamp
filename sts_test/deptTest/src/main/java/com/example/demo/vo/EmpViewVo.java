package com.example.demo.vo;

import java.util.Date;

public class EmpViewVo {
	
	private int eno;
	private String ename;
	private String dname;
	private String job;
	private String mname;
	private int sal;
	private int comm;
	private int total;
	private String dloc;
	private Date hiredate;
	
	
	public EmpViewVo(int eno, String ename, String dname, String job, String mname, int sal, int comm, int total,
			String dloc, Date hiredate) {
		super();
		this.eno = eno;
		this.ename = ename;
		this.dname = dname;
		this.job = job;
		this.mname = mname;
		this.sal = sal;
		this.comm = comm;
		this.total = total;
		this.dloc = dloc;
		this.hiredate = hiredate;
	}


	public EmpViewVo() {
		super();
		// TODO Auto-generated constructor stub
	}


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


	public String getDname() {
		return dname;
	}


	public void setDname(String dname) {
		this.dname = dname;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
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


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public String getDloc() {
		return dloc;
	}


	public void setDloc(String dloc) {
		this.dloc = dloc;
	}


	public Date getHiredate() {
		return hiredate;
	}


	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	
	
}
