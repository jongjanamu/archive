package archive.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public int regAcount(Map<String, Object> paramMap) {
		return sqlSession.insert("archive.login.regAcount", paramMap);
	}

}
