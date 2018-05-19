package anna.diary.service;

import java.util.List;

import anna.diary.domain.Diary;

public interface DiaryService {
		List<Diary> findAll();
		List<Diary> mypage(int m_no);
		int add(Diary diary);
		Diary get(int no);
		int delete(int no);
		int update(Diary diary);
}

