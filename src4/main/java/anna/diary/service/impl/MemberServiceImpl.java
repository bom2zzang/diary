package anna.diary.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import anna.diary.dao.MemberDao;
import anna.diary.domain.Member;
import anna.diary.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired MemberDao memberDao;
    

    @Override
    public List<Member> findAll() {
    	return memberDao.findAll();
    }
    
    @Override
    public Member get(int m_no) {
        return memberDao.findByNo(m_no);
    }
    
    @Override
    public Member get(String email, String password) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("password", password);
        
        return memberDao.findByEmailAndPassword(params);
    }
    

    @Override
    public int add(Member member) {
        return memberDao.insert(member);
    }

    @Override
    public int update(Member member) {
        return memberDao.update(member);
    }

    @Override
    public int delete(int m_no) {
        return memberDao.delete(m_no);
    }

}
