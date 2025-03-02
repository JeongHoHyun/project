package io.github.hohyun.community.login.controller;

import io.github.hohyun.community.login.domain.LoginVO;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/")
    public String home() {
        return "main";
    }

    @GetMapping("/login")
    public String login() {
        return "login/login";
    }

    @PostMapping("/login")
    public String login(LoginVO vo, @RequestParam(defaultValue = "/") String redirectURL, HttpSession session){

        return "redirect:" + redirectURL;
    }

    @PostMapping("/logout")
    public String logout(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        return "redirect:/";
    }
}
