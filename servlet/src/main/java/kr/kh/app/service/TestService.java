package kr.kh.app.service;

import java.util.List;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.pagination.Criteria;
import kr.kh.app.pagination.PageMaker;

public interface TestService {
	TestVO createTest(MemberVO user);

	PageMaker getQuestionPageMaker(Criteria cri);

	List<QuestionVO> getQuestionList(Criteria cri);
}