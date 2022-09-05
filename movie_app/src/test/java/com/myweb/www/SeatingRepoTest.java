package com.myweb.www;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.RoomVO;
import com.myweb.www.domain.ScheduleDTO;
import com.myweb.www.domain.SeatingDTO;
import com.myweb.www.repository.MovieDAO;
import com.myweb.www.repository.RoomDAO;
import com.myweb.www.repository.ScheduleDAO;
import com.myweb.www.repository.SeatDAO;
import com.myweb.www.repository.TheaterDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.myweb.www.config.RootConfig.class})
public class SeatingRepoTest {
	
	@Inject
	private MovieDAO modao;
	
	@Inject
	private RoomDAO rdao;
	
	@Inject
	private ScheduleDAO scdao;
	
	@Inject
	private TheaterDAO tdao;
	
	@Inject
	private SeatDAO sdao;
	
	@Test
	public void seatingDTOTest() {
		long scno = 2L;
		ScheduleDTO scdto = new ScheduleDTO(scdao.selectOneFromScno(scno), sdao.selectSeatCount(scno), sdao.selectEmptyCount(scno));
		RoomVO rvo = rdao.selectOneFromRno(scdto.getScvo().getRno());
		SeatingDTO sdto = new SeatingDTO(modao.selectOneFromMovieId(scdto.getScvo().getMovieId()),tdao.selectOneFromRno(rvo.getRno()), rvo, scdto, sdao.selectListFromScno(scno));
	}
}
