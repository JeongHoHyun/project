package io.github.hohyun.community.user.mapper;

import io.github.hohyun.community.user.domain.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    int insertUser(UserVO vo);
    int updateUser(UserVO vo);
    int deleteUser(Long userId);
    int duplicateId(String loginId);
    UserVO loginUser(UserVO vo);
    UserVO selectUserDetail(Long userId);
}
