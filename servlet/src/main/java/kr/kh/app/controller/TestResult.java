package kr.kh.app.controller;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet("/test/result")
public class TestResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TestService testService = new TestServiceImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String te_num = request.getParameter("te_num");
		
		request.getRequestDispatcher("/WEB-INF/views/test/result.jsp").forward(request, response);
	}
}