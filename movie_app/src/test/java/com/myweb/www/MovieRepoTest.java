package com.myweb.www;

import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.MovieVO;
import com.myweb.www.repository.MovieDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.myweb.www.config.RootConfig.class})
public class MovieRepoTest {
	
	@Inject
	private MovieDAO mdao;
	
	@Test
	public void selectMovieTest() {
		List<MovieVO> list = mdao.selectList();
		for (MovieVO mvo : list) {
			log.info(mvo.getMovieNm());
		}
	}
	
	@Test
	public void selectTnoMovieTest() {
		List<MovieVO> list = mdao.selectList(99L);
		for (MovieVO mvo : list) {
			log.info(mvo.getMovieNm());
		}
	}
	
	
}
