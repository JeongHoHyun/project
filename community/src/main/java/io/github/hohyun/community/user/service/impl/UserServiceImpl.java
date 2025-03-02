package io.github.hohyun.community.user.service.impl;

import io.github.hohyun.community.user.domain.UserVO;
import io.github.hohyun.community.user.mapper.UserMapper;
import io.github.hohyun.community.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;

    @Override
    public int insertUser(UserVO vo) {
        return 0;
    }

    @Override
    public int updateUser(UserVO vo) {
        return 0;
    }

    @Override
    public int deleteUser(Long userId) {
        return 0;
    }

    @Override
    public int duplicateId(String loginId) {
        return 0;
    }

    @Override
    public UserVO loginUser(UserVO vo) {
        return null;
    }

    @Override
    public UserVO selectUserDetail(Long userId) {
        return null;
    }

}
