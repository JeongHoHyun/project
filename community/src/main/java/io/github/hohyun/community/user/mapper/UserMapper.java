package io.github.hohyun.community.user.mapper;

import io.github.hohyun.community.user.domain.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserMapper {
    int insertUser(UserVO vo);
    int updateUser(UserVO vo);
    int deleteUser(Long userId);
    int duplicateId(String loginId);
    UserVO findById(String loginId);
    UserVO selectUserDetail(Long userId);
}
