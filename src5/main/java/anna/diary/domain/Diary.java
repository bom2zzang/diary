package anna.diary.domain;

import java.sql.Date;


public class Diary {
    protected int no;
    protected String title;
    protected String photo;
    protected String contents;
    protected Date date;
    protected Member writer;
    
    
    
    public Diary() {}





	public Member getWriter() {
		return writer;
	}





	public void setWriter(Member writer) {
		this.writer = writer;
	}





	@Override
	public String toString() {
		return "Diary [no=" + no + ", title=" + title + ", photo=" + photo + ", contents=" + contents + ", date=" + date
				+ ", writer=" + writer + "]";
	}





	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getPhoto() {
		return photo;
	}



	public void setPhoto(String photo) {
		this.photo = photo;
	}



	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}
    
      
    
}









