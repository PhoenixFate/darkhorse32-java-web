package com.phoenix.param;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Map;

/**
 * struts2 封装集合类型参数
 */
public class ParamAction4 extends ActionSupport {

    private List<String> list;
    private Map<String,String> map;

    @Override
    public String execute() throws Exception {
        System.out.println("param action4");
        System.out.println("list: "+list);
        System.out.println("map: "+map);
        return "success";
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }
}
