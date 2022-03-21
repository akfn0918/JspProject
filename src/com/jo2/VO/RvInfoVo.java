package com.jo2.VO;

import java.util.Date;

//VO (Value Object) : JAVA 쪽에서 DB를 처리하기 위한 그릇

public class RvInfoVo {
	int m_id;		//number(5)
	int p_id;		//number(5)
	private String in_date;	//date
	private String out_date;	//date
	private String s_type; 	//varchar2(20)

	
	//디폴트생성자 =======================================================	
	public RvInfoVo() { }
	//값이 있는 생성자 =======================================================




	public int getM_id() {
		return m_id;
	}


	public RvInfoVo(int m_id, int p_id, String in_date, String out_date, String s_type) {
		this.m_id = m_id;
		this.p_id = p_id;
		this.in_date = in_date;
		this.out_date = out_date;
		this.s_type = s_type;
	}




	public int getP_id() {
		return p_id;
	}




	public void setP_id(int p_id) {
		this.p_id = p_id;
	}




	public String getIn_date() {
		return in_date;
	}




	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}




	public String getOut_date() {
		return out_date;
	}




	public void setOut_date(String out_date) {
		this.out_date = out_date;
	}




	public String getS_type() {
		return s_type;
	}




	public void setS_type(String s_type) {
		this.s_type = s_type;
	}




	public void setM_id(int m_id) {
		this.m_id = m_id;
	}




	@Override
	public String toString() {
		return "RvInfoVo [m_id=" + m_id + ", p_id=" + p_id + ", in_date=" + in_date + ", out_date=" + out_date
				+ ", s_type=" + s_type + "]";
	}
	
	



	
}
