package com.fruitsalad.demo.sys.service.impl;

import com.fruitsalad.demo.sys.entity.User;
import com.fruitsalad.demo.sys.mapper.UserMapper;
import com.fruitsalad.demo.sys.service.IUserService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wzh
 * @since 2019-07-17
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
