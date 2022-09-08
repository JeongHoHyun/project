package com.qna.www.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	private String email;
	private String pwd;
	private String nickName;
	private String regAt;
	private String lastLogin;
	private int answerCount;
	private int acceptedAnswer;
	private String profileImg;
	
	public MemberVO(String email, String pwd, String nickName) {
		this.email = email;
		this.pwd = pwd;
		this.nickName = nickName;
	}
	
	public MemberVO(String email, String pwd, String nickName, String profileImg) {
		this.email = email;
		this.pwd = pwd;
		this.nickName = nickName;
		this.profileImg = profileImg;
	}
	
	public MemberVO(String email, String nickName, String regAt, String lastLogin, int answerCount, int acceptedAnswer,
			String profileImg) {
		this.email = email;
		this.nickName = nickName;
		this.regAt = regAt;
		this.lastLogin = lastLogin;
		this.answerCount = answerCount;
		this.acceptedAnswer = acceptedAnswer;
		this.profileImg = profileImg;
	}

}
