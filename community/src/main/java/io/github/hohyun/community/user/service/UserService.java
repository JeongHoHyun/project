package io.github.hohyun.community.user.service;

import io.github.hohyun.community.user.domain.UserVO;

public interface UserService {
    int insertUser(UserVO vo);
    int updateUser(UserVO vo);
    int deleteUser(Long userId);
    int duplicateId(String loginId);
    UserVO loginUser(UserVO vo);
    UserVO selectUserDetail(Long userId);
    UserVO findById(String loginId);
}
