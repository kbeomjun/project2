package kr.kh.app.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.kh.app.dao.DiscussionDAO;
import kr.kh.app.model.vo.DiscussionVO;

public class DiscussionServiceImp implements DiscussionService {
	private DiscussionDAO discussionDao;
	
	public DiscussionServiceImp() {
		String resource = "kr/kh/app/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSession session;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sessionFactory.openSession(true);
			discussionDao = session.getMapper(DiscussionDAO.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<DiscussionVO> getDiscussionList(){
		return discussionDao.selectDiscussionList();
	}
}