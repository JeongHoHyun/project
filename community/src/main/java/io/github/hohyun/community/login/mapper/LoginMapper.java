package io.github.hohyun.community.login.mapper;

import io.github.hohyun.community.login.domain.LoginDTO;
import io.github.hohyun.community.login.domain.LoginVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {
    LoginVO loginUser(LoginDTO loginDTO);
}
