package com.myweb.www.handler;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.tika.Tika;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.myweb.www.domain.MemberVO;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnails;

@Slf4j
@Component
public class FileHandler {
	private final String UP_DIR = "/usr/local/file_uploaded";

	private boolean isImageFile(File storeFile) throws IOException {
		String mimeType = new Tika().detect(storeFile);
		return mimeType.startsWith("image") ? true : false;
	}

	public MemberVO setMemberImg(MultipartFile file, MemberVO mvo) {
		String profile = "/member/profile";
		File folder = new File(UP_DIR + profile);
		if (!folder.exists()) {
			folder.mkdirs(); // 경로에 해당하는 폴더 생성
		}
		String originalFileName = file.getOriginalFilename();
		if (originalFileName.equals("") || originalFileName.equals(null)) {
			mvo.setProfileLink(mvo.getOldProfile());
		} else {
			String onlyFileName = originalFileName.substring(originalFileName.lastIndexOf("\\") + 1); // 경로제거 후 순수파일.확장자 이름만
			mvo.setProfileLink(onlyFileName);
			String fullFileName = mvo.getId() + "_" + onlyFileName;
			File storeFile = new File(folder, fullFileName);

			try {
				file.transferTo(storeFile); // 원본객체를 복사하여 저장하는 방식
				if (isImageFile(storeFile)) { // 이미지파일이면 썸네일 제작
					File thumbNail = new File(folder, mvo.getId() + "_th_" + onlyFileName);
					Thumbnails.of(storeFile).size(180, 180).toFile(thumbNail);
				}
			} catch (Exception e) {
				log.debug(">>> File 객체 물리디스크에 저장 실패");
				e.printStackTrace();
			}
		}
		return mvo;
	}
}
