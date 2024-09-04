package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.kh.app.model.vo.DiscussionRoomVO;
import kr.kh.app.service.DiscussionService;
import kr.kh.app.service.DiscussionServiceImp;

@WebServlet("/discussion")
public class Discussion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DiscussionService discussionService = new DiscussionServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<DiscussionRoomVO> list = discussionService.getDiscussionList();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/discuss/discussionRoom.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}