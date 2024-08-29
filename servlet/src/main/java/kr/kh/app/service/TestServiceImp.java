package kr.kh.app.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.kh.app.dao.TestDAO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.pagination.Criteria;
import kr.kh.app.pagination.PageMaker;

public class TestServiceImp implements TestService {
	private TestDAO testDao;
	
	public TestServiceImp() {
		String resource = "kr/kh/app/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSession session;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sessionFactory.openSession(true);
			testDao = session.getMapper(TestDAO.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public TestVO createTest(MemberVO user) {
		if(user == null) {
			return null;
		}
		TestVO test = new TestVO(user.getMe_id()); 
		testDao.insertTest(test);
		return test;
	}

	@Override
	public PageMaker getPostPageMaker(Criteria cri) {
		int totalCount = testDao.selectQuestionTotalCount();
		return new PageMaker(totalCount, cri.getPerPageNum(), cri);
	}

	@Override
	public List<QuestionVO> getQuestionList(Criteria cri) {
		return testDao.selectQuestionList(cri);
	}
}