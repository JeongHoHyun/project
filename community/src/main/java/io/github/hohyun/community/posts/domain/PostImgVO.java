package io.github.hohyun.community.posts.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PostImgVO {
    private Long imgId;
    private Long postId;
    private String originalFilename;
    private String storedFilename;
    private String imgUrl;
    private String regDate;
}
