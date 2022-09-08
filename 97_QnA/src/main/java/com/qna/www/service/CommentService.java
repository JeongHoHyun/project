package com.qna.www.service;

import com.qna.www.domain.CommentVO;
import com.qna.www.domain.PagingVO;
import com.qna.www.handler.PagingHandler;

public interface CommentService {
	int post(CommentVO cvo);
	PagingHandler spread(long qno, PagingVO pgvo);
	int modify(CommentVO cvo);
	int remove(long ano);
}
