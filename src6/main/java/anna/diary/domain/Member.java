package anna.diary.domain;

import java.sql.Date;

public class Member {
    
    protected int m_no;
    protected String name;
    protected String email;
    protected String password;
    protected Date birth;
    protected String line;
    protected String m_photo;
    
    public Member() {}
    
    public Member(int m_no, String name, String email) {
        this.m_no = m_no;
        this.name = name;
        this.email = email;
    }

    

	@Override
	public String toString() {
		return "Member [m_no=" + m_no + ", name=" + name + ", email=" + email + ", password=" + password + ", birth="
				+ birth + ", line=" + line + ", m_photo=" + m_photo + "]";
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

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public String getM_photo() {
		return m_photo;
	}

	public void setM_photo(String m_photo) {
		this.m_photo = m_photo;
	}
    
    

    
}









