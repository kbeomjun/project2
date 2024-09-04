package kr.kh.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.mysql.cj.Session;

import kr.kh.app.model.vo.CommentVO;
import kr.kh.app.model.vo.DiscussionVO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.service.DiscussionService;
import kr.kh.app.service.DiscussionServiceImp;

@WebServlet("/discussion")
public class Discussion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DiscussionService discussionService = new DiscussionServiceImp();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<DiscussionVO> list = discussionService.getDiscussionList();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/discuss/discussionRoom.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dr_num = request.getParameter("dr_num");
		String co_content = request.getParameter("co_content");
		JSONObject jobj = new JSONObject();
		try {
		int co_dr_num = Integer.parseInt(dr_num);	
			
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		String co_me_id = user.getMe_id();
		
		CommentVO comment = new CommentVO(co_content, co_me_id, co_dr_num);
		boolean res = discussionService.insertComment(comment);
		jobj.put("result", res);
		}catch (Exception e) {
			e.printStackTrace();
		}
		//response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
	}
}