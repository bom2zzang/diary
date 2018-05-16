package anna.diary.dao;

import java.util.List;
import java.util.Map;

import anna.diary.domain.Member;

public interface MemberDao {
	List<Member> findAll();
    Member findByNo(int m_no);
    Member findByEmailAndPassword(Map<String,Object> params);
    int countAll();
    int insert(Member member);
    int update(Member member);
    int delete(int m_no);
}















