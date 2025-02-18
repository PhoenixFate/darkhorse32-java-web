package com.phoenix.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.phoenix.domain.User;
import com.phoenix.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User> {
    private User user = new User();

    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String login() throws Exception {
        //1 调用Service执行登陆逻辑
        User u = userService.getUserByCodePassword(user);
        //2 将返回的User对象放入session域
        ActionContext.getContext().getSession().put("user", u);
        //3 重定向到项目首页
        return "toHome";
    }

    @Override
    public User getModel() {
        return user;
    }
}
