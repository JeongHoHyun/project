package com.qna.www.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qna.www.domain.CommentVO;
import com.qna.www.domain.PagingVO;

public interface CommentDAO {
	int insert(CommentVO cvo);
	List<CommentVO> selectList(@Param("qno") long qno, @Param("pgvo") PagingVO pgvo);
	int update(CommentVO cvo);
	int delete(long ano);
	int selectTotalCount(long qno);
	long selectQno(long ano);
}
