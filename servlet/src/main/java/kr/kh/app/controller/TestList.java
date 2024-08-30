package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.pagination.Criteria;
import kr.kh.app.pagination.PageMaker;
import kr.kh.app.service.TestService;
import kr.kh.app.service.TestServiceImp;

@WebServlet("/test/list")
public class TestList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TestService testService = new TestServiceImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Criteria cri = new Criteria(1, 5);
		PageMaker pm = testService.getQuestionPageMaker(cri);
		List<QuestionVO> list = testService.getQuestionList(cri);
		
		request.setAttribute("pm", pm);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/test/list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}