package com.qna.www.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.qna.www.domain.FileVO;
import com.qna.www.domain.PagingVO;
import com.qna.www.domain.QuestionsDTO;
import com.qna.www.domain.QuestionsVO;
import com.qna.www.repository.FileDAO;
import com.qna.www.repository.QuestionsDAO;

@Service
public class QuestionsServiceImpl implements QuestionsService {

	@Inject
	private QuestionsDAO qdao;
	@Inject
	private FileDAO fdao;
	
	@Override
	public int register(QuestionsDTO qdto) {
		int isUp = qdao.insert(qdto.getQvo());
		if (qdto.getFileList() != null) {
			if (isUp > 0 && qdto.getFileList().size() > 0) {
				long qno = qdao.selectLastQno();
				for (FileVO fvo : qdto.getFileList()) {
					fvo.setQno(qno);
					isUp *= fdao.insertFile(fvo);
				}
			}
		}
		return isUp;
	}

	@Override
	public int remove(long pno) {
		return qdao.delete(pno);
	}

	@Override
	public int modify(QuestionsDTO qdto) {
		int isUp = qdao.update(qdto.getQvo());
		if (qdto.getFileList() != null) {
			for (FileVO fvo : qdto.getFileList()) {
				fvo.setQno(qdto.getQvo().getQno());
				isUp *= fdao.insertFile(fvo);
			}
		}
		return isUp;
	}

	@Override
	public List<QuestionsVO> getList(PagingVO pgvo) {
		return qdao.selectList(pgvo);
	}

	@Override
	public QuestionsDTO getDetail(long pno) {
		return new QuestionsDTO(qdao.selectOne(pno), fdao.selectListFile(pno));
	}

	@Override
	public int getTotalCount(PagingVO pgvo) {
		return qdao.selectTotalCount(pgvo);
	}

	@Override
	public int removeFile(String uuid) {
		return fdao.deleteFile(uuid);
	}


}
