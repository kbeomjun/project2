package kr.kh.app.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.kh.app.dao.MemberDAO;
import kr.kh.app.model.vo.MemberVO;

public class MemberServiceImp implements MemberService {
	private MemberDAO memberDao;
	
	public MemberServiceImp() {
		String resource = "kr/kh/app/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSession session;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sessionFactory.openSession(true);
			memberDao = session.getMapper(MemberDAO.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public boolean checkRegex(String regex, String str) {
		if(str != null && Pattern.matches(regex, str)) {
			return true;
		}
		return false;
	}
	
	@Override
	public int signup(MemberVO member) {
		if(member == null) {
			return 0;
		}
		if(!checkRegex("^\\w{6,13}$", member.getMe_id())) {
			return 0;
		}
		if(!checkRegex("^[a-zA-Z0-9!@#$]{6,15}$", member.getMe_pw())) {
			return 0;
		}
		MemberVO dbUser = memberDao.selectMember(member.getMe_id());
		if(dbUser != null) {
			return 1;
		} else {
			try {
				memberDao.insertMember(member);
				return 2;
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			}
		}
	}
	
}