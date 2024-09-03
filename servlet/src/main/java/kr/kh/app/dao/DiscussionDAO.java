package kr.kh.app.dao;

import java.util.List;

import kr.kh.app.model.vo.DiscussionVO;

public interface DiscussionDAO {
	
	List<DiscussionVO> selectDiscussionList();
	
}