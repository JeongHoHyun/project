package io.github.hohyun.community.posts.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PostsVO {
    private Long postId;
    private String userid;
    private String title;
    private String content;
    private int views;
    private String regDate;
    private String modDate;
}
