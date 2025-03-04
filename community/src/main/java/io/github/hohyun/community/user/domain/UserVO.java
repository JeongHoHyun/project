package io.github.hohyun.community.user.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserVO {
    private Long userId;
    private String loginId;
    private String userName;
    private String email;
    private String password;
    private String regDate;
    private String modDate;
}
