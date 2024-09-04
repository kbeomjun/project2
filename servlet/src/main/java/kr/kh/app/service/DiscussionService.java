package kr.kh.app.service;

import java.util.List;

import kr.kh.app.model.vo.DiscussionRoomVO;

public interface DiscussionService {
	List<DiscussionRoomVO> getDiscussionList();
}