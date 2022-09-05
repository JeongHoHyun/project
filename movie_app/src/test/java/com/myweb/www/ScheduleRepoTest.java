package com.myweb.www;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.RoomVO;
import com.myweb.www.domain.ScheduleDTO;
import com.myweb.www.domain.ScheduleVO;
import com.myweb.www.repository.RoomDAO;
import com.myweb.www.repository.ScheduleDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.myweb.www.config.RootConfig.class})
public class ScheduleRepoTest {

	@Inject
	private ScheduleDAO scdao;
	
	@Inject
	private RoomDAO rdao;
	
	@Test
	public void insertScheduleTest() throws Exception {
		// rno, tno, start_time, end_time, movie_id
		LocalDateTime today = LocalDateTime.now().with(LocalTime.NOON).minusHours(4);
		for (int i = 0; i < 7; i++) {
			List<RoomVO> rvoList = rdao.selectListAll();
			for (RoomVO rvo : rvoList) {
				if (random(0, 1) > 0) {
					int plusHour = 0;
					int len = random(3,6);
					for (int j = 0; j < len; j++) {
						ScheduleVO scvo = new ScheduleVO();
						scvo.setRno(rvo.getRno());
						scvo.setTno(rvo.getTno());
						scvo.setMovieId(rvo.getMovieId());
						scvo.setStartTime(today.plusHours(plusHour).format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
						scvo.setEndTime(today.plusHours(plusHour).plusHours(2).format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
						scdao.insert(scvo);
						plusHour += 2;
					}
				}
			}
			today = today.plusDays(1);
		}
	}
	
	private static int random(int min, int max) {
		return (int)Math.floor(Math.random() * (max - min + 1)) + min;
	}
}
