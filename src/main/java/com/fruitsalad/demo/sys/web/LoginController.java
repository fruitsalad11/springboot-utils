package com.fruitsalad.demo.sys.web;

import com.fruitsalad.commons.base.R;
import com.fruitsalad.demo.sys.entity.User;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping("index")
    public String index(){
        return "login";
    }

    @RequestMapping("username")
    @ResponseBody
    public R usernameLogin(User user, String outTime, String imageCode, HttpServletRequest request, HttpServletResponse response){
        try {
            String code = request.getSession().getAttribute(request.getSession().getId()+"imagecode").toString();
            if(!StringUtils.isEmpty(imageCode) && imageCode.toUpperCase().equals(code)){
                Subject subject = SecurityUtils.getSubject();
                UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(),user.getPassword());
                subject.login(token);
            }else {
                return R.error(1, "验证码验证失败").put("url","/login.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return R.error(1,"账户名或密码不正确").put("url","/login.jsp");
        }

        return R.ok().put("url","/login/admin");
    }

    @RequestMapping("admin")
    public String admin(){
        return "admin";
    }

    @RequestMapping("sign")
    public String sign(){
        return "sign";
    }

    @RequestMapping("scroll")
    public String scroll(){
        return "scroll";
    }
}
