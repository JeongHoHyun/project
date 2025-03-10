package io.github.hohyun.community.user.domain;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserFormDTO {
    private Long userId;
    @NotBlank
    private String loginId;
    @NotBlank
    private String userName;
    @NotBlank
    private String email;
    @NotBlank
    private String password;
    private String regDate;
    private String modDate;
}
