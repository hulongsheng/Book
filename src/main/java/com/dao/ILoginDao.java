package com.dao;

import com.pojo.BookUser;

public interface ILoginDao {
    //登录
    BookUser login(String name,String password);
}
