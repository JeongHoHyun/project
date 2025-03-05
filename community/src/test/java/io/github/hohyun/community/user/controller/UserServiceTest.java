package io.github.hohyun.community.user.controller;

import io.github.hohyun.community.CommunityApplication;
import io.github.hohyun.community.user.domain.UserVO;
import io.github.hohyun.community.user.service.UserService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(classes = CommunityApplication.class)  // 전체 애플리케이션 로드
@Transactional  // 테스트 데이터 롤백
class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    @DisplayName("회원 등록 테스트")
    void insertUserTest() {
        // given
        UserVO user = new UserVO();
        user.setLoginId("testUser");
        user.setUserName("테스트 유저");
        user.setEmail("test@example.com");
        user.setPassword("1234");

        // when
        userService.insertUser(user);

        // then
        UserVO foundUser = userService.selectUserDetail(user.getUserId());
        int check = userService.duplicateId(user.getLoginId());
        assertThat(check).isEqualTo(1);
        assertThat(foundUser).isNotNull();
        assertThat(foundUser.getLoginId()).isEqualTo("testUser");
    }

    @Test
    @DisplayName("회원 수정 테스트")
    void updateUserTest() {
        // given
        UserVO user = new UserVO();
        user.setLoginId("updateUser");
        user.setUserName("원래 이름");
        user.setEmail("original@example.com");
        user.setPassword("1234");
        userService.insertUser(user);

        // when
        user.setUserName("수정된 이름");
        user.setEmail("updated@example.com");
        userService.updateUser(user);

        // then
        UserVO updatedUser = userService.selectUserDetail(user.getUserId());
        assertThat(updatedUser.getUserName()).isEqualTo("수정된 이름");
        assertThat(updatedUser.getEmail()).isEqualTo("updated@example.com");
    }

    @Test
    @DisplayName("회원 삭제 테스트")
    void deleteUserTest() {
        // given
        UserVO user = new UserVO();
        user.setLoginId("deleteUser");
        user.setUserName("삭제 유저");
        user.setEmail("delete@example.com");
        user.setPassword("1234");
        userService.insertUser(user);

        // when
        userService.deleteUser(user.getUserId());

        // then
        UserVO deletedUser = userService.selectUserDetail(user.getUserId());
        assertThat(deletedUser).isNull();
    }

    @Test
    @DisplayName("회원 상세조회 테스트")
    void selectUserDetailTest() {
        // given
        UserVO user = new UserVO();
        user.setLoginId("selectUser");
        user.setUserName("조회 유저");
        user.setEmail("select@example.com");
        user.setPassword("1234");
        userService.insertUser(user);

        // when
        UserVO foundUser = userService.selectUserDetail(user.getUserId());

        // then
        assertThat(foundUser).isNotNull();
        assertThat(foundUser.getLoginId()).isEqualTo("selectUser");
    }
}
