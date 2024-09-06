package kr.kh.app.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.kh.app.dao.DiscussionDAO;
import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionRoomVO;

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
	public List<DiscussionRoomVO> getDiscussionList(){
		return discussionDao.selectDiscussionList();
	}

	@Override
	public boolean insertComment(CommentVO comment) {
		if(comment == null) {
			return false;
		}
		if(comment.getCo_content() == null || comment.getCo_content().trim().length() == 0) {
			return false;
		}
		// 단어가 24개 이상일때 말풍선 밖으로 넘어가는 현상 수정
		String[] arr = comment.getCo_content().split("");
		String co_content = "";
		int count = 0;
		for(int i = 0; i < arr.length; i++) {
			if(!arr[i].equals(" ")) {
				count++;
			}else {
				count = 1;
			}
			if(count == 24) {
				count = 1;
				co_content += " ";
			}
			co_content += arr[i];
		}
		comment.setCo_content(co_content);
		
		return discussionDao.insertComment(comment);
	}

	@Override
	public DiscussionRoomVO getDiscussionRoom(String dr_num) {
		if(dr_num == null) {
			return null;
		}
		return discussionDao.selectDiscussionRoom(Integer.parseInt(dr_num));
	}

	@Override
	public List<CommentVO> getCommentList(DiscussionRoomVO dr) {
		if(dr == null) {
			return null;
		}
		return discussionDao.selectCommentList(dr);
	}
}