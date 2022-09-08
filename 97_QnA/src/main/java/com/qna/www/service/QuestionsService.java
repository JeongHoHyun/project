package com.qna.www.service;

import java.util.List;

import com.qna.www.domain.PagingVO;
import com.qna.www.domain.QuestionsDTO;
import com.qna.www.domain.QuestionsVO;

public interface QuestionsService {
	int remove(long pno);
	int modify(QuestionsDTO qdto);
	List<QuestionsVO> getList(PagingVO pgvo);
	QuestionsDTO getDetail(long pno);
	int getTotalCount(PagingVO pgvo);
	int register(QuestionsDTO qdto);
	int removeFile(String uuid);
}
