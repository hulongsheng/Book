package com.service;

import com.pojo.BookUser;

public interface IUserService {
    //登录
    BookUser login(String name, String password);
}
