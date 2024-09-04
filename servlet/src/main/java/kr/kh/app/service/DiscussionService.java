package kr.kh.app.service;

import java.util.List;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionVO;

public interface DiscussionService {
	
	List<DiscussionVO> getDiscussionList();

	boolean insertComment(CommentVO comment);
	
}