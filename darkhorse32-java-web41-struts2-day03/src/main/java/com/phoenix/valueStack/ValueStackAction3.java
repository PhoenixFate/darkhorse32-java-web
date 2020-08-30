package com.phoenix.valueStack;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.phoenix.bean.User;

public class ValueStackAction3 extends ActionSupport implements ModelDriven<User> {

    private User user=new User();

    @Override
    public String execute() throws Exception {
        System.out.println(user);
        return "success";
    }

    // public void prepare() throws Exception {
    //     //1.获得值栈
    //     ValueStack valueStack = ActionContext.getContext().getValueStack();
    //     //2.将user压入栈顶
    //     valueStack.push(user);
    // }

    public User getModel() {
        return user;
    }
}