package io.github.hohyun.community.login.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
    private String loginId;
    private String password;
}
