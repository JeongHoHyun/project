package io.github.hohyun.community.user.controller;

import io.github.hohyun.community.user.domain.UserFormDTO;
import io.github.hohyun.community.user.domain.UserVO;
import io.github.hohyun.community.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
@Slf4j
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/register")
    public String register() {
        return "user/register";
    }

    @PostMapping("/register")
    public String register(UserFormDTO dto) {
        log.info("register User: {}", dto);
        UserVO user = new UserVO();
        user.setLoginId(dto.getLoginId());
        user.setEmail(dto.getEmail());
        user.setUserName(dto.getUserName());
        user.setPassword(dto.getPassword());
        userService.insertUser(user);
        return "redirect:/login";
    }

    @PostMapping("/checkId")
    @ResponseBody
    public int checkId(@RequestBody String loginId) {
        log.info("checkId: {}", loginId);
        return userService.duplicateId(loginId);
    }

    @GetMapping("/info/{userId}")
    public String userInfo(Model model, @PathVariable Long userId) {
        log.info("userInfo: {}", userId);
        model.addAttribute("user", userService.selectUserDetail(userId));
        return "user/info";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute UserFormDTO dto) {
        log.info("update User: {}", dto);
        UserVO user = new UserVO();
        user.setUserId(dto.getUserId());
        user.setLoginId(dto.getLoginId());
        user.setEmail(dto.getEmail());
        user.setUserName(dto.getUserName());
        userService.updateUser(user);
        return "redirect:/user/info/" + dto.getUserId();
    }

    @PostMapping("/delete")
    public String deleteUser(Long userid) {
        log.info("delete UserId: {}", userid);
        userService.deleteUser(userid);
        return "redirect:/";
    }
}
