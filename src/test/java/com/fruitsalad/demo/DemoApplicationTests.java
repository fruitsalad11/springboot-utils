package com.fruitsalad.demo;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.fruitsalad.commons.common.jdbc.JdbcTemplateConnection;
import com.fruitsalad.demo.sys.entity.User;
import com.fruitsalad.demo.sys.entity.UserInfo;
import com.fruitsalad.demo.sys.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.UUID;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {

    @Autowired
    private IUserService userService;

    @Test
    public void testSelect(){
        UserInfo userInfo = new UserInfo();
        Page<UserInfo> page = new Page<>(1,3);
        EntityWrapper<UserInfo> wrapper = new EntityWrapper<>();
        page = userInfo.selectPage(page,wrapper);
        System.out.println("总数量：" + page.getTotal());
        System.out.println("总页数：" + page.getPages());
        System.out.println("当前页数：" + page.getCurrent());
        System.out.println("每页数量：" + page.getSize());
        System.out.println(page.getRecords());
    }

    @Test
    public void testInsert(){
        User user = new User();
        String id = UUID.randomUUID().toString().replace("-","");
        user.setId(id);
        user.setPassword("123456");
        user.setUsername("wzh12");
        boolean flag = user.insert();
        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(id);
        userInfo.setSex("男");
        userInfo.setAge("28");
        flag = userInfo.insert();
        System.out.println("插入结果：" + flag);
    }



}
