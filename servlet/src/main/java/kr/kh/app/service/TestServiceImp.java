package kr.kh.app.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.kh.app.dao.TestDAO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;
import kr.kh.app.pagination.Criteria;
import kr.kh.app.pagination.PageMaker;

public class TestServiceImp implements TestService {
	private TestDAO testDao;
	
	public TestServiceImp() {
		String resource = "kr/kh/app/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSession session;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sessionFactory.openSession(true);
			testDao = session.getMapper(TestDAO.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public TestVO createTest(MemberVO user) {
		if(user == null) {
			return null;
		}
		TestVO test = new TestVO(user.getMe_id()); 
		testDao.insertTest(test);
		return test;
	}

	@Override
	public PageMaker getQuestionPageMaker(Criteria cri) {
		int totalCount = testDao.selectQuestionTotalCount();
		return new PageMaker(totalCount, 1, cri);
	}

	@Override
	public List<QuestionVO> getQuestionList(Criteria cri) {
		return testDao.selectQuestionList(cri);
	}

	@Override
	public void insertQuestionAnswer(String te_num, List<String> namelist, List<String> answerlist) {
		for(int i = 0; i < namelist.size(); i++) {
			String answer = answerlist.get(i);
			int qa_answer = Integer.parseInt(answer);
			
			int qa_te_num = Integer.parseInt(te_num);
			
			String name = namelist.get(i);
			int index = name.indexOf('r');
			String qaQuNumStr = name.substring(index + 1);
			int qa_qu_num = Integer.parseInt(qaQuNumStr);
			
			testDao.insertQuestionAnswer(qa_answer, qa_te_num, qa_qu_num);
		}
		
	}

	@Override
	public TestVO getTestResult(String te_num) {
		int qa_te_num = Integer.parseInt(te_num);
		int num_IE = testDao.selectQuestionAnswerSum(qa_te_num, "IE");
		int num_SN = testDao.selectQuestionAnswerSum(qa_te_num, "SN");
		int num_TF = testDao.selectQuestionAnswerSum(qa_te_num, "TF");
		int num_PJ = testDao.selectQuestionAnswerSum(qa_te_num, "PJ");
		
		String te_result = "";
		if(num_IE >= 0) {
			te_result += "E";
		}else {
			te_result += "I";
		}
		if(num_SN >= 0) {
			te_result += "N";
		}else {
			te_result += "S";
		}
		if(num_TF >= 0) {
			te_result += "F";
		}else {
			te_result += "T";
		}
		if(num_PJ >= 0) {
			te_result += "J";
		}else {
			te_result += "P";
		}
		
		TestVO test = testDao.selectTest(qa_te_num);
		test.setTe_result(te_result);
		testDao.updateTestResult(test);
		return test;
	}

	@Override
	public List<String> getTestResultPercentage(String te_num) {
		List<String> list = new ArrayList<String>();
		
		int qa_te_num = Integer.parseInt(te_num);
		int num_IE = 50 + testDao.selectQuestionAnswerSum(qa_te_num, "IE");
		int num_SN = 50 + testDao.selectQuestionAnswerSum(qa_te_num, "SN");
		int num_TF = 50 + testDao.selectQuestionAnswerSum(qa_te_num, "TF");
		int num_PJ = 50 + testDao.selectQuestionAnswerSum(qa_te_num, "PJ");
		
		list.add(num_IE+"%");
		list.add(num_SN+"%");
		list.add(num_TF+"%");
		list.add(num_PJ+"%");
		
		return list;
	}
}