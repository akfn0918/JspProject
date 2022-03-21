package com.jo2.VO;

//VO (Value Object) : JAVA 쪽에서 DB를 처리하기 위한 그릇

public class MemInfoVo {
	private int m_pk;
	private String m_name;			//varchar2(20)
	private String tel;				//varchar2(30)
	private String pw;				//varchar2(30)
	private String memo;				

	
	//디폴트생성자 =======================================================	
	public MemInfoVo() { }
	//값이 있는 생성자 =======================================================


	public MemInfoVo(int m_pk,String m_name, String tel, String pw, String memo) {
		
		this.m_pk	= m_pk;
		this.m_name = m_name;
		this.tel = tel;
		this.pw = pw;
		this.memo = memo;
	}





	public MemInfoVo(String tel){
		
		
		this.tel = tel;
		
	}


	public int getM_pk() {
		return m_pk;
	}


	public void setM_pk(int m_pk) {
		this.m_pk = m_pk;
	}


	public String getM_name() {
		return m_name;
	}


	public void setM_name(String m_name) {
		this.m_name = m_name;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	@Override
	public String toString() {
		return "MemInfoVo [m_pk=" + m_pk + ", m_name=" + m_name + ", tel=" + tel + ", pw=" + pw + ", memo=" + memo
				+ "]";
	}
	
	
	
	
	
	

}

