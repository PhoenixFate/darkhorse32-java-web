package com.phoenix.shiro.handler;

import com.phoenix.shiro.service.ShiroService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/shiro")
public class ShiroHandler {

    @Autowired
    private ShiroService shiroService;

    @RequiresRoles({"admin"})
    @RequestMapping(value = "/test/annotation", method = RequestMethod.GET)
    public String testShiroAnnotation(HttpSession session) {
        session.setAttribute("key", "value123456");
        shiroService.testShiroAnnotation();

        return "redirect:/list.jsp";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
        Subject currentUser = SecurityUtils.getSubject();

        if (!currentUser.isAuthenticated()) {
            // 把用户名和密码封装为 UsernamePasswordToken 对象
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            // remember me
            token.setRememberMe(true);
            try {
                System.out.println("1. " + token.hashCode());
                // 执行登录.
                currentUser.login(token);
            }
            // ... catch more exceptions here (maybe custom ones specific to your application?
            // 所有认证时异常的父类.
            catch (AuthenticationException ae) {
                //unexpected condition?  error?
                System.out.println("登录失败: " + ae.getMessage());
            }
        }

        return "redirect:/list.jsp";
    }

}
