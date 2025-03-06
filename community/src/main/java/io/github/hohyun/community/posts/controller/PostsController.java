package io.github.hohyun.community.posts.controller;

import io.github.hohyun.community.posts.domain.PostsVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/posts")
public class PostsController {

    @GetMapping("/list")
    public String postsPage(Model model) {
        return "posts/posts";
    }

    @GetMapping("/add")
    public String postsAddPage(PostsVO postsVO) {
        return "posts/add";
    }

    @PostMapping("/add")
    public String postsAdd(PostsVO postsVO){
        return "redirect:/posts/list";
    }

    @GetMapping("/edit/{postId}")
    public String postsEditPage(Model model, @PathVariable Long postId) {
        return "posts/edit";
    }

    @GetMapping("/detail/{postId}")
    public String postsDetailPage(@PathVariable Long postId, Model model) {
        return "posts/detail";
    }

    @GetMapping("/delete/{postId}")
    public String postsDeletePage(Model model, @PathVariable Long postId) {
        return "redirect:/posts/list";
    }
}
