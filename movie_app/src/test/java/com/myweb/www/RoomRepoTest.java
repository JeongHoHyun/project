package com.myweb.www;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.MovieVO;
import com.myweb.www.domain.RoomDTO;
import com.myweb.www.domain.RoomVO;
import com.myweb.www.domain.ScheduleDTO;
import com.myweb.www.domain.ScheduleVO;
import com.myweb.www.domain.TicketDTO;
import com.myweb.www.repository.MovieDAO;
import com.myweb.www.repository.RoomDAO;
import com.myweb.www.repository.ScheduleDAO;
import com.myweb.www.repository.SeatDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.myweb.www.config.RootConfig.class})
public class RoomRepoTest {

	@Inject
	private RoomDAO rdao;
	
	@Inject
	private MovieDAO modao;
	
	@Inject 
	private ScheduleDAO scdao;
	
	@Inject
	private SeatDAO sdao;
	
	@Test
	public void selectTicketTest() {
		List<TicketDTO> tdtoList = new ArrayList<TicketDTO>();
		Map<String, Long> movoMap = new HashMap<>();
		movoMap.put("tno", 1L);
		List<MovieVO> movoList = modao.selectTicketList(movoMap);
		for (MovieVO movo : movoList) {
			List<RoomDTO> rdtoList = new ArrayList<RoomDTO>();
			Map<String, Long> rvoMap = new HashMap<>();
			rvoMap.put("tno", 1L);
			rvoMap.put("movieId", movo.getMovieId());
			List<RoomVO> rvoList = rdao.selectTicketList(movoMap);
			for (RoomVO rvo : rvoList) {
				List<ScheduleDTO> scdtoList = new ArrayList<>();
				List<ScheduleVO> scvoList = new ArrayList<ScheduleVO>();
				for (ScheduleVO scvo : scvoList) {
					scdtoList.add(new ScheduleDTO(scvo, sdao.selectSeatCount(scvo.getScno()), sdao.selectEmptyCount(scvo.getScno())));
				}
				rdtoList.add(new RoomDTO(rvo, scdtoList));
			}
			tdtoList.add(new TicketDTO(movo, rdtoList));
		}
		
	}
	
}
