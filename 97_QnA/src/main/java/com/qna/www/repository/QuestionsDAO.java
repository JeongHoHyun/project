package com.qna.www.repository;

import java.util.List;

import com.qna.www.domain.PagingVO;
import com.qna.www.domain.QuestionsDTO;
import com.qna.www.domain.QuestionsVO;

public interface QuestionsDAO {
	int insert(QuestionsVO qvo);
	int delete(long qno);
	int update(QuestionsVO pvo);
	List<QuestionsVO> selectList(PagingVO pgvo);
	QuestionsVO selectOne(long pno);
	int selectTotalCount(PagingVO pgvo);
	long selectLastQno();
}
