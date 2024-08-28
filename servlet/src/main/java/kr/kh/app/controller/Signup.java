package kr.kh.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.service.MemberService;
import kr.kh.app.service.MemberServiceImp;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("me_id");
		String pw = request.getParameter("me_pw");
		System.out.println(id);
		System.out.println(pw);
		JSONObject jobj = new JSONObject();
		MemberVO member = new MemberVO(id, pw);
		int res = memberService.signup(member);
		System.out.println("결과"+res);
		jobj.put("result", res);		
				
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}

}