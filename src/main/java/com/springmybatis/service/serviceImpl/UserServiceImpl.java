package com.springmybatis.service.serviceImpl;

import com.springmybatis.mapper.UserMapper;
import com.springmybatis.model.User;
import com.springmybatis.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
    private UserMapper userMapper;


    @Override
    public User selectByPrimaryKey(int userId) {
        // TODO Auto-generated method stub

        return this.userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int insert(User user) {

        return this.userMapper.insert(user);
    }

    @Override
    public List<User> selectlistAll() {
        return this.userMapper.selectListAll();
    }

    @Override
    public int updateByPrimaryKey(User user) {
        return this.userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.userMapper.deleteByPrimaryKey(id);
    }
}
