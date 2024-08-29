package kr.kh.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.pagination.Criteria;

public interface TestDAO {
	void insertTest(@Param("te")TestVO test);

	int selectQuestionTotalCount();

	List<QuestionVO> selectQuestionList(@Param("cri")Criteria cri);
}