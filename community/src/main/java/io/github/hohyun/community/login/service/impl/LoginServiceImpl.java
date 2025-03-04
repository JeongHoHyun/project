package io.github.hohyun.community.login.service.impl;

import io.github.hohyun.community.login.domain.LoginDTO;
import io.github.hohyun.community.login.domain.LoginVO;
import io.github.hohyun.community.login.mapper.LoginMapper;
import io.github.hohyun.community.login.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LoginServiceImpl implements LoginService {

    private final LoginMapper loginMapper;
    @Override
    public LoginVO loginUser(LoginDTO loginDTO) {
        return loginMapper.loginUser(loginDTO);
    }
}
