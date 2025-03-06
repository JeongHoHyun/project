package io.github.hohyun.community.user.service.impl;

import io.github.hohyun.community.user.domain.UserInfoDTO;
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
        return userMapper.insertUser(vo);
    }

    @Override
    public int updateUser(UserVO vo) {
        return userMapper.updateUser(vo);
    }

    @Override
    public int deleteUser(Long userId) {
        return userMapper.deleteUser(userId);
    }

    @Override
    public int duplicateId(String loginId) {
        return userMapper.duplicateId(loginId);
    }

    @Override
    public UserVO loginUser(UserVO vo) {
        return null;
    }

    @Override
    public UserInfoDTO selectUserDetail(Long userId) {
        UserInfoDTO userInfoDTO = userMapper.selectUserDetail(userId);
        userInfoDTO.setPostCnt(0);
        userInfoDTO.setCommentCnt(0);
        return userInfoDTO;
    }

    @Override
    public UserVO findById(String loginId) {
        return userMapper.findById(loginId);
    }

}
