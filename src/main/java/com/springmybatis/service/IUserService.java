package com.springmybatis.service;


import com.springmybatis.model.User;

import java.util.List;

public interface IUserService {

    User selectByPrimaryKey(int id);
    int insert(User record);
    List<User> selectlistAll();
    int updateByPrimaryKey(User record);
    int deleteByPrimaryKey(Integer id);

}
