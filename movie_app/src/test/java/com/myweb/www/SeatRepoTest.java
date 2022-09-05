package com.myweb.www;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.RoomVO;
import com.myweb.www.domain.ScheduleDTO;
import com.myweb.www.domain.ScheduleVO;
import com.myweb.www.domain.SearchDTO;
import com.myweb.www.domain.SeatVO;
import com.myweb.www.domain.TicketDTO;
import com.myweb.www.repository.RoomDAO;
import com.myweb.www.repository.ScheduleDAO;
import com.myweb.www.repository.SeatDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.myweb.www.config.RootConfig.class})
public class SeatRepoTest {
	
	@Inject
	private RoomDAO rdao;
	
	@Inject
	private SeatDAO sdao;
	
	@Inject
	private ScheduleDAO scdao;
	
	@Test
	public void autoSeatRegister() throws Exception {
		List<ScheduleVO> scvoList = scdao.selectListAll();
		for (ScheduleVO scvo : scvoList) {
			if (sdao.selectSeatCount(scvo.getScno()) < 1) {
				RoomVO rvo = rdao.selectOneFromRno(scvo.getRno());
				int width = rvo.getWidth();
				int height = rvo.getHeight();
				width = width - (rvo.getPathX1() > 0 ? 1 : 0) - (rvo.getPathX2() > 0 ? 1 : 0);
				height = height - (rvo.getPathY1() > 0 ? 1 : 0) - (rvo.getPathY2() > 0 ? 1 : 0);
				for(int y = 65; y < 65 + height; y++) {
					for (int x = 1; x <= width; x++) {
						SearchDTO schdto = new SearchDTO();
						schdto.setScno(scvo.getScno());
						schdto.setX(x);
						schdto.setY(String.valueOf((char)y));
						schdto.setValid(x % 2 == 0 ? false : true);
						sdao.insertSeat(schdto);
					}
				}
			}
		}
	}
	
}
