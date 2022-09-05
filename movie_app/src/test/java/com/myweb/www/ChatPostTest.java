package com.myweb.www;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.ChatVO;
import com.myweb.www.repository.ChatDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { com.myweb.www.config.RootConfig.class})
public class ChatPostTest {

	@Inject
	private ChatDAO chdao;
	
	@Test
	public void insertChatTest() {
		for (int i = 1; i < 200; i++) {
			int isUp = chdao.insert(new ChatVO(i+1, 123123, "test content "+i/2.0, "tester"+i, i/2.0));
			
		}
	}
}
