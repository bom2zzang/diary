package anna.diary.domain;

public class Member {
    
    protected int m_no;
    protected String name;
    protected String email;
    protected String password;
    
    public Member() {}
    
    public Member(int m_no, String name, String email) {
        this.m_no = m_no;
        this.name = name;
        this.email = email;
    }

	@Override
	public String toString() {
		return "Member [m_no=" + m_no + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    
    

    
}









