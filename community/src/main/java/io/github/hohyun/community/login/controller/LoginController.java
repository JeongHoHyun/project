package io.github.hohyun.community.login.controller;

import io.github.hohyun.community.login.domain.LoginDTO;
import io.github.hohyun.community.login.domain.LoginVO;
import io.github.hohyun.community.login.service.LoginService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
@RequiredArgsConstructor
public class LoginController {

    private final LoginService loginService;

    @GetMapping("/")
    public String home() {
        return "main";
    }

    @GetMapping("/login")
    public String login(LoginDTO loginDTO) {
        return "login/login";
    }

    @PostMapping("/login")
    public String login(@Valid LoginDTO loginDTO, @RequestParam(defaultValue = "/") String redirectURL, HttpSession session, BindingResult bindingResult) {
        LoginVO loginVO = loginService.loginUser(loginDTO);
        if (loginVO == null) {
            bindingResult.reject("loginFail");
            return "login/login";
        }
        log.info("=== login success ===");
        session.setAttribute("loginVO", loginVO);
        session.setMaxInactiveInterval(10 * 60);
        return "redirect:" + redirectURL;
    }

    @PostMapping("/logout")
    public String logout(HttpServletRequest request, HttpSession session){
        Cookie[] cookies = request.getCookies();
        session.invalidate();
        return "redirect:/";
    }
}
