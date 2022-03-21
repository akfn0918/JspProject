package com.jo2.VO;

//VO (Value Object) : JAVA 쪽에서 DB를 처리하기 위한 그릇

public class PetInfoVo {
	int m_id;		//number(5)
	int p_id;		//number(5)
	private String p_name;	//varchar2(20)
	private int p_weight;	//number(5)
	private String p_birth;	//date
	private String memo;

	
	//디폴트생성자 =======================================================	
	public PetInfoVo() { }
	//값이 있는 생성자 =======================================================





	public PetInfoVo(int m_id, int p_id, String p_name, int p_weight, String p_birth, String memo) {
		
		this.m_id = m_id;
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_weight = p_weight;
		this.p_birth = p_birth;
		this.memo = memo;
	}





	public int getM_id() {
		return m_id;
	}





	public void setM_id(int m_id) {
		this.m_id = m_id;
	}





	public int getP_id() {
		return p_id;
	}





	public void setP_id(int p_id) {
		this.p_id = p_id;
	}





	public String getP_name() {
		return p_name;
	}





	public void setP_name(String p_name) {
		this.p_name = p_name;
	}





	public int getP_weight() {
		return p_weight;
	}





	public void setP_weight(int p_weight) {
		this.p_weight = p_weight;
	}





	public String getP_birth() {
		return p_birth;
	}





	public void setP_birth(String p_birth) {
		this.p_birth = p_birth;
	}





	public String getMemo() {
		return memo;
	}





	public void setMemo(String memo) {
		this.memo = memo;
	}
	

	
	
}