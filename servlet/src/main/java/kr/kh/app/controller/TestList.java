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

@WebServlet("/test/list")
public class TestList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TestService testService = new TestServiceImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String te_num = request.getParameter("te_num");
		String page = request.getParameter("page");
		Criteria cri = new Criteria(1, 5);
		if(page != null) {
			cri.setPage(Integer.parseInt(page));
		}
		PageMaker pm = testService.getQuestionPageMaker(cri);
		List<QuestionVO> list = testService.getQuestionList(cri);
		
		request.setAttribute("te_num", te_num);
		request.setAttribute("pm", pm);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/test/list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String te_num = request.getParameter("te_num");
		String page = request.getParameter("page");
		String perPageNum = request.getParameter("perPageNum");
		String next = request.getParameter("next");
		if(page != null) {
			List<String> namelist = new ArrayList<String>();
			List<String> answerlist = new ArrayList<String>();
			int pageNum = Integer.parseInt(page);
			for(int i = 1; i <= 5; i++) {
				int num = i + Integer.parseInt(perPageNum) * (pageNum - 1);
				String name = "answer" + num;
				namelist.add(name);
				answerlist.add(request.getParameter(name));
			}
			testService.insertQuestionAnswer(te_num, namelist, answerlist);
			
			if(next.equals("next")) {
				request.setAttribute("msg", "next");
				request.setAttribute("url", "/test/list?te_num="+te_num+"&page="+(pageNum + 1));
				request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
			}else if(next.equals("end")) {
				request.setAttribute("msg", "테스트를 모두 진행하였습니다.");
				request.setAttribute("url", "/test/result?te_num="+te_num);
				request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
			}
		}
	}
}