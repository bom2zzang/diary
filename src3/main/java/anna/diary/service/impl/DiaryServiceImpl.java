package anna.diary.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import anna.diary.dao.DiaryDao;
import anna.diary.domain.Diary;
import anna.diary.service.DiaryService;


@Service
public class DiaryServiceImpl implements DiaryService{

    @Autowired DiaryDao diaryDao;
    
    @Override
    public List<Diary> findAll() {
    	return diaryDao.findAll();
    }

	@Override
	public int add(Diary diary) {
		return diaryDao.insert(diary);
	}

	@Override
	public Diary get(int no) {
		return diaryDao.findByNo(no);
	}

	@Override
	public int delete(int no) {
		return diaryDao.delete(no);
	}

	@Override
	public int update(Diary diary) {
		return diaryDao.update(diary);
	}

	@Override
	public List<Diary> mypage(int m_no) {
		return diaryDao.mypage(m_no);
	}
    
    
/*




	@Override
	public int delete(int m_no) {
		return memberDao.delete(m_no);
	}


	@Override
	public int update(Member member) {
		return memberDao.update(member);
	}


	@Override
	public Member get(String email, String pwd) {
		HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("pwd", pwd);
        
        return memberDao.findByEmailAndPassword(params);
    }
	

	
*/


}
