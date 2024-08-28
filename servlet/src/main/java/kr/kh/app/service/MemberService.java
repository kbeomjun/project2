package kr.kh.app.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import kr.kh.app.model.vo.MemberVO;

public interface MemberService {
	boolean signup(MemberVO member);

	boolean checkId(String me_id);

	String checkUser(MemberVO user);

	Cookie createCookie(MemberVO user, HttpServletRequest request);

	void updateMemberCookie(MemberVO user);

	MemberVO getMemberBySid(String sid);

	MemberVO getMember(MemberVO user);

	boolean updateMemberPw(MemberVO user, String me_pw);

	boolean updateMemberEmail(MemberVO user, String me_email);

	boolean deleteMember(MemberVO user);
}