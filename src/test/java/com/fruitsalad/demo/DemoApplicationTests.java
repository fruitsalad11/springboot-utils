package com.fruitsalad.demo;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.fruitsalad.demo.sys.entity.User;
import com.fruitsalad.demo.sys.entity.UserAndUserInfo;
import com.fruitsalad.demo.sys.entity.UserInfo;
import com.fruitsalad.demo.sys.service.impl.UserServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import sun.plugin2.util.SystemUtil;

import java.math.BigDecimal;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {

    @Autowired
    private UserServiceImpl userService;

    @Test
    public void testSelect() {
        UserInfo userInfo = new UserInfo();
        Page<UserInfo> page = new Page<>(1, 3);
        Wrapper wrapper = new EntityWrapper();
        page = userInfo.selectPage(page, wrapper);
        System.out.println("总数量：" + page.getTotal());
        System.out.println("总页数：" + page.getPages());
        System.out.println("当前页数：" + page.getCurrent());
        System.out.println("每页数量：" + page.getSize());
        System.out.println(page.getRecords());
    }

    /*@Test
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
    }*/

    @Test
    public void test111() {
        UserInfo userInfo = new UserInfo();
        Page<UserAndUserInfo> page = new Page<>(1, 2);
        User user = new User();
        List<UserAndUserInfo> userList = userService.getUserFullInfoList(page, user);
        page.setRecords(userList);
        System.out.println("总数量：" + page.getTotal());
        System.out.println("总页数：" + page.getPages());
        System.out.println("当前页数：" + page.getCurrent());
        System.out.println("每页数量：" + page.getSize());
        System.out.println(page.getRecords());
    }


    @Test
    public void test123() {
        BigDecimal x = new BigDecimal("0.1");
        BigDecimal y = new BigDecimal("0.2");
        System.out.println(x.subtract(y));
    }

    @Test
    public void testSplit() {
        String s = "123213213,1111";
        String[] array = s.split(",");
        for (String s1 : array) {
            System.out.println("hhhahha");
            System.out.println(s1);
        }
    }

    @Test
    public void insertUser() {
        for (int i = 0; i < 10000; i++) {
            User user = new User();
            user.setUsername("wzh" + i);
            user.setPassword("123456");
            user.insert();
            System.out.println(i);
        }
    }

    @Test
    public void selectUser() {
        long t1 = System.currentTimeMillis();
        Page<UserAndUserInfo> page = new Page<>(1, 20000);
        User user = new User();
        List<UserAndUserInfo> userList = userService.getUserFullInfoList(page, user);
        page.setRecords(userList);
        System.out.println(page);
        long t2 = System.currentTimeMillis();
        System.out.println(t2 - t1);
    }
}
