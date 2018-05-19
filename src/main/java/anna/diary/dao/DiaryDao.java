package anna.diary.dao;

import java.util.List;

import anna.diary.domain.Diary;

public interface DiaryDao {
	 List<Diary> findAll();
	 List<Diary> mypage(int m_no);
	 int insert(Diary diary);
	 Diary findByNo(int no);
	 int delete(int no);
	 int update(Diary diary);
	 

    
}












