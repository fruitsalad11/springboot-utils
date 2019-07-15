package com.fruitsalad.demo;

import com.fruitsalad.demo.common.jdbc.JdbcTemplateConnection;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {
    @Autowired
    private JdbcTemplateConnection jdbcTemplate;

    @Test
    public void contextLoads() {
        jdbcTemplate.getConnection();
    }

}
