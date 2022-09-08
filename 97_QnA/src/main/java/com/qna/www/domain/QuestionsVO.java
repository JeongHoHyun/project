package com.qna.www.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QuestionsVO {
	private long qno;
	private String category;
	private String title;
	private String writer;
	private String question;
	private String regAt;
	private String modAt;
	private int readCount;
	private int ansQty;
	private int fileCount;
	
	
	// list
	public QuestionsVO(long qno, String category, String title, String writer, String modAt, int readCount,
			int ansQty) {
		this.qno = qno;
		this.category = category;
		this.title = title;
		this.writer = writer;
		this.modAt = modAt;
		this.readCount = readCount;
		this.ansQty = ansQty;
	}

	// register
	public QuestionsVO(String category, String title, String writer, String question) {
		this.category = category;
		this.title = title;
		this.writer = writer;
		this.question = question;
	}

	// modify
	public QuestionsVO(long qno, String category, String title, String question) {
		this.qno = qno;
		this.category = category;
		this.title = title;
		this.question = question;
	}
	
	
}
