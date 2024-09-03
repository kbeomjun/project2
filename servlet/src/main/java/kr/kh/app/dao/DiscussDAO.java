package kr.kh.app.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.kh.app.model.vo.MemberVO;

public interface DiscussDAO {
	
	List<DiscussVO> selectDiscussList();
	
}