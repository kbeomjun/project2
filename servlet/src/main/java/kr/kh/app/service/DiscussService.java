package kr.kh.app.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import kr.kh.app.model.vo.MemberVO;

public interface DiscussService {
	
	List<DiscussVO> getDiscussList();
	
}