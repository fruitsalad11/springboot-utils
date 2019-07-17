package com.fruitsalad.demo;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.fruitsalad.demo.common.jdbc.JdbcTemplateConnection;
import com.fruitsalad.demo.sys.entity.User;
import com.fruitsalad.demo.sys.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {
    @Autowired
    private JdbcTemplateConnection jdbcTemplate;

    @Autowired
    private IUserService userService;

    @Test
    public void contextLoads() {
        jdbcTemplate.getConnection();
    }

    @Test
    public void testSelect(){
        EntityWrapper<User> wrapper = new EntityWrapper<>();
        List<User> userList = userService.selectList(wrapper);
        System.out.println("总数量：" + userList.size());
    }

    @Test
    public void testInsert(){
        User user = new User();
        user.setPassword("123");
        user.setUsername("测试");
        boolean flag = user.insert();
        System.out.println("插入结果：" + flag);
    }



}
