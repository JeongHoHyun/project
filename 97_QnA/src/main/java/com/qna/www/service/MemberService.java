package com.qna.www.service;

import java.util.List;


import com.qna.www.domain.MemberVO;

public interface MemberService {
	
	int register(MemberVO mvo);
	MemberVO login(MemberVO mvo);
	List<MemberVO> getList();
	MemberVO getDetail(String email);
	int modify(MemberVO mvo);
	int remove(String email);
	int dupleCheck(String email);
}
