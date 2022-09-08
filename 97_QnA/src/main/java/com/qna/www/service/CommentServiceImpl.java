package com.qna.www.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qna.www.domain.CommentVO;
import com.qna.www.domain.PagingVO;
import com.qna.www.handler.PagingHandler;
import com.qna.www.repository.CommentDAO;
import com.qna.www.repository.QuestionsDAO;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Inject
	private CommentDAO cdao;

	@Inject
	private QuestionsDAO qdao;
	
	@Transactional
	@Override
	public int post(CommentVO cvo) {
		int isUp = cdao.insert(cvo);
		if (isUp > 0) {
//			isUp = qdao.updateCmtQty(cvo.getqno(), 1);
		}
		return isUp;
	}

	@Override
	public PagingHandler spread(long qno, PagingVO pgvo) {
		return new PagingHandler(cdao.selectList(qno, pgvo),
				pgvo, cdao.selectTotalCount(qno));
	}

	@Override
	public int modify(CommentVO cvo) {
		return cdao.update(cvo);
	}

	@Transactional
	@Override
	public int remove(long ano) {
		long qno = cdao.selectQno(ano);
		int isUp = cdao.delete(ano);
//		isUp = qdao.updateCmtQty(qno, -1);
		return isUp;
	}
}
