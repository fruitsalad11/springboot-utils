package com.fruitsalad.demo.config;

import org.apache.shiro.authc.Authenticator;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authc.pam.AtLeastOneSuccessfulStrategy;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Configuration
public class ShiroConfig {
    private static Map<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();
    /**
     *  凭证匹配器，注册时应使用相同算法生成密码
     * @return
     */
    @Bean
    public CredentialsMatcher credentialsMatcher(){
        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher();
        //散列算法
        matcher.setHashAlgorithmName("md5");
        //散列次数
        matcher.setHashIterations(1);
        //十六进制
        matcher.setStoredCredentialsHexEncoded(true);
        return matcher;
    }

    /**
     * 数据域
     * @return
     */
    @Bean
    public UserRealm UserRealm(){
        UserRealm userRealm = new UserRealm();
        userRealm.setCredentialsMatcher(credentialsMatcher());
        return userRealm;
    }

    /**
     * Cache缓存
     * @return
     */
    @Bean
    public MemoryConstrainedCacheManager getEhCacheManager() {
        MemoryConstrainedCacheManager em = new MemoryConstrainedCacheManager();
        return em;
    }

    /**
     * Session缓存
     * @return
     */
    @Bean
    public DefaultWebSessionManager defaultWebSessionManager(){
        DefaultWebSessionManager dwsm = new DefaultWebSessionManager();
        dwsm.setGlobalSessionTimeout(3600000);
        dwsm.setSessionValidationSchedulerEnabled(true);
        return dwsm;
    }

    /**
     * 验证策略，用于多realms验证时注入securityManager
     * @return
     */
    @Bean
    public Authenticator Authenticator(){
        ModularRealmAuthenticator authenticator = new ModularRealmAuthenticator();
        authenticator.setAuthenticationStrategy(new AtLeastOneSuccessfulStrategy());
        return authenticator;
    }

    /**
     *安全管理器，shiro核心
     * @return
     */
    @Bean(name = "securityManager")
    public DefaultWebSecurityManager getDefaultWebSecurityManager() {
        DefaultWebSecurityManager dwsm = new DefaultWebSecurityManager();
        dwsm.setRealm(UserRealm());
        dwsm.setSessionManager(defaultWebSessionManager());
        dwsm.setCacheManager(getEhCacheManager());
        /*List<Realm> realms = new ArrayList<>();
        realms.add(UserRealm());
        realms.add(...)
        dwsm.setRealms(realms);
        dwsm.setAuthenticator(Authenticator());*/
        return dwsm;
    }

    /**
     * shiro注解功能
     * @return
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor getAuthorizationAttributeSourceAdvisor() {
        AuthorizationAttributeSourceAdvisor aasa = new AuthorizationAttributeSourceAdvisor();
        aasa.setSecurityManager(getDefaultWebSecurityManager());
        return new AuthorizationAttributeSourceAdvisor();
    }

    /**
     * spring自动代理，实现AOP功能
     * @return
     */
    @Bean
    public DefaultAdvisorAutoProxyCreator getDefaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator daap = new DefaultAdvisorAutoProxyCreator();
        daap.setProxyTargetClass(true);
        return daap;
    }

    /**
     * shiro对象生命周期交由spring处理
     * @return
     */
    @Bean(name = "lifecycleBeanPostProcessor")
    public LifecycleBeanPostProcessor getLifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    @Bean(name = "shiroFilter")
    public ShiroFilterFactoryBean getShiroFilterFactoryBean() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(getDefaultWebSecurityManager());
        shiroFilterFactoryBean.setSuccessUrl("/main/index");
        shiroFilterFactoryBean.setUnauthorizedUrl("/unauthorized");
        //默认/login.jsp
        shiroFilterFactoryBean.setLoginUrl("/login.jsp");

        /*filterChainDefinitionMap.put("/*.jsp*", "anon");*/
        filterChainDefinitionMap.put("/statics/**", "anon");
        filterChainDefinitionMap.put("/login/*", "anon");
        filterChainDefinitionMap.put("/common/*", "anon");
        filterChainDefinitionMap.put("/**", "authc");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }
}
