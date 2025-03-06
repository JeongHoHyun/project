package io.github.hohyun.community.user.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.java.Log;

@Getter
@Setter
@ToString
public class UserInfoDTO {
    private Long userId;
    private String loginId;
    private String userName;
    private String email;
    private String regDate;
    private String modDate;

    private int postCnt;
    private int commentCnt;
}
