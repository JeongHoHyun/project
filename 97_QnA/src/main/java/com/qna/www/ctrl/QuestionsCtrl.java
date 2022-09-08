package com.qna.www.ctrl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qna.www.domain.FileVO;
import com.qna.www.domain.PagingVO;
import com.qna.www.domain.QuestionsDTO;
import com.qna.www.domain.QuestionsVO;
import com.qna.www.handler.FileHandler;
import com.qna.www.handler.PagingHandler;
import com.qna.www.service.QuestionsService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/questions/*")
@Slf4j
public class QuestionsCtrl {
	@Inject
	private QuestionsService qsv;
	@Inject
	private FileHandler fhd;
	
	@GetMapping("/list")
	public void list(Model model, PagingVO pgvo) {
		model.addAttribute("list", qsv.getList(pgvo));
		model.addAttribute("pgn", new PagingHandler(pgvo, qsv.getTotalCount(pgvo)));
	}
	
	@GetMapping("/register")
	public void register() {
	}
	
	@PostMapping("/register")
	public String register(QuestionsVO qvo, RedirectAttributes rttr,
			@RequestParam(name = "fileAttached", required = false) MultipartFile[] files) {
		List<FileVO> fileList = null;
		if (files[0].getSize() > 0) {
			fileList = fhd.getFileList(files);
			qvo.setFileCount(fileList.size());
		}
		int isUp = qsv.register(new QuestionsDTO(qvo, fileList));
		return "redirect:/questions/list";
	}
	@GetMapping({"/detail", "/modify"})
	public void detail(@RequestParam("qno") long qno, Model model,
			@ModelAttribute("pgvo") PagingVO pgvo) {
		model.addAttribute("qdto", qsv.getDetail(qno));
	}
	@PostMapping("/remove")
	public String remove(@RequestParam("qno") long pno, RedirectAttributes rttr, PagingVO pgvo) {
		int isUp = qsv.remove(pno);
		rttr.addAttribute("pageNo", pgvo.getPageNo());
		rttr.addAttribute("qty", pgvo.getQty());
		rttr.addAttribute("type", pgvo.getType());
		rttr.addAttribute("kw", pgvo.getKw());
		return "redirect:/questions/list";
	}
	@PostMapping("/modify")
	public String modify(QuestionsVO qvo,
			@RequestParam(name="fileAttached", required = false) MultipartFile[] files,
			RedirectAttributes rttr,
			PagingVO pgvo) {
		List<FileVO> fileList = null;
		if (files[0].getSize() > 0) {
			fileList = fhd.getFileList(files);
			qvo.setFileCount(fileList.size());
		}
		int isUp = qsv.modify(new QuestionsDTO(qvo, fileList));
		rttr.addAttribute("pageNo", pgvo.getPageNo());
		rttr.addAttribute("qty", pgvo.getQty());
		rttr.addAttribute("type", pgvo.getType());
		rttr.addAttribute("kw", pgvo.getKw());
		return "redirect:/questions/detail?qno="+qvo.getQno();
	}
	@DeleteMapping(value = "/file/{uuid}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String>removeFile(@PathVariable("uuid") String uuid){
		return qsv.removeFile(uuid) > 0 ?
				new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}

