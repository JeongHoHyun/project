package com.myweb.www.ctrl;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/movieAPI/*")
@Controller
public class MovieAPIController {
	private final String KEY = "c0dfb745f0783f9347ba85c15a454f15"; // API 사용 키 값, 영화진흥회에서 회원가입 하시면 받을 수 있습니다.
	
	@GetMapping(value = "/box/{date}", produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<String> spreadBoxOffice(@PathVariable("date") String date) {
		log.info(">>> movieAPICtrl > spreadBoxOffice > GET");
		String targetDt = date; // 검색 날짜 yyyymmdd
		String itemPerPage = "10"; // 결과 개수
		String multiMovieYn = "N"; // 다양성 영화(Y) / 상업 영화(N)
		String repNationCd = ""; // 한국/외국 영화 조회 K: 한국, F: 외국, 기본: 전체
		String wideAreaCd = ""; // 지역별
		String dailyResponse = ""; 
		
		KobisOpenAPIRestService svc = new KobisOpenAPIRestService(KEY);
		try {
			dailyResponse = svc.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd, wideAreaCd);
		} catch (OpenAPIFault e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dailyResponse != null && dailyResponse != "" ?  new ResponseEntity<String>(dailyResponse, HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/info/{movieId}", produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<String> spreadMovieInfo(@PathVariable("movieId") String movieId) {
		log.info(">>> movieAPICtrl > spreadMovieInfo > GET");
		KobisOpenAPIRestService svc = new KobisOpenAPIRestService(KEY);
		String movieInfo = "";
		
		try {
			movieInfo = svc.getMovieInfo(true, movieId);
		} catch (OpenAPIFault e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movieInfo != null && movieInfo != "" ? new ResponseEntity<String>(movieInfo, HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
 	