package io.github.hohyun.community.login.service;

import io.github.hohyun.community.login.domain.LoginDTO;
import io.github.hohyun.community.login.domain.LoginVO;

public interface LoginService {
    LoginVO loginUser(LoginDTO loginDTO);
}
