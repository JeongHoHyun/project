package com.qna.www.domain;

import lombok.Data;

@Data // 불필요한 기능까지 선언하므로 추천하지 않는다.
public class CommentVO {
	private long ano;
	private long qno;
	private String writer;
	private String content;
	private String regAt;
	private String modAt;
	
	public CommentVO() {}
	// insert : qno, writer, content
	// list : ano, qno, writer, content, modAt
	// modify : ano, content
	// remove : ano

	public CommentVO(long qno, String writer, String content) {
		this.qno = qno;
		this.writer = writer;
		this.content = content;
	}
	public CommentVO(long ano, long qno, String writer, String content, String regAt, String modAt) {
		this.ano = ano;
		this.qno = qno;
		this.writer = writer;
		this.content = content;
		this.regAt = regAt;
		this.modAt = modAt;
	}
	public CommentVO(long ano, String content) {
		this.ano = ano;
		this.content = content;
	}
	

	public long getano() {
		return ano;
	}

	public void setano(long ano) {
		this.ano = ano;
	}

	public long getqno() {
		return qno;
	}

	public void setqno(long qno) {
		this.qno = qno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegAt() {
		return regAt;
	}

	public void setRegAt(String regAt) {
		this.regAt = regAt;
	}

	public String getModAt() {
		return modAt;
	}

	public void setModAt(String modAt) {
		this.modAt = modAt;
	}

	@Override
	public String toString() {
		return "CommentVO [ano=" + ano + ", qno=" + qno + ", writer=" + writer + ", content=" + content + ", regAt="
				+ regAt + ", modAt=" + modAt + "]";
	}
}
