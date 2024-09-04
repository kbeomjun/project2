package kr.kh.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionVO;

public interface DiscussionDAO {
	
	List<DiscussionVO> selectDiscussionList();

	boolean insertComment(@Param("co")CommentVO comment);
	
}