package com.qna.www.repository;

import java.util.List;

import com.qna.www.domain.MemberVO;

public interface MemberDAO {
	int insert(MemberVO mvo);
	MemberVO selectLogin(MemberVO mvo);
	MemberVO selectDetail(String email);
	List<MemberVO> selectList();
	int update(MemberVO mvo); // modify
	int delete(String email); // remove
	int selectEmail(String email);
	void updateLastLogin(String email);
}
