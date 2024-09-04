package kr.kh.app.dao;

import java.util.List;

import kr.kh.app.model.vo.DiscussionRoomVO;

public interface DiscussionDAO {
	List<DiscussionRoomVO> selectDiscussionList();
}