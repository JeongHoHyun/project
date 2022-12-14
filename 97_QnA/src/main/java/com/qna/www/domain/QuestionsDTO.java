package com.qna.www.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class QuestionsDTO {
	private QuestionsVO qvo;
	private List<FileVO> fileList;
}
