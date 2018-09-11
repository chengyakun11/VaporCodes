//
//  Configation.swift
//  VaporCodes
//
//  Created by apple on 2018/4/24.
//
//


struct page_config {
    static let index_topic_page_size = 5 //-- 首页每页文章数
}





//白名单(拦截器不判断是否登录)
let whitelist = [
    "^/blog$",
    "^/about$",
    "^/life$",
    "^/doing$",
    "^/techshare$",
    "^/wiki$",
    "^/gustbook$",
    "^/blog/topicGetList$",
    "^/blog/topic/[0-9]+/detail$",
    "^/resume$",
    "^/websockets/index$",
    "^/websockets/sendMsg$",
]


#if os(Linux)
    struct ApplicationConfiguration {
        let baseURL =  "http://39.105.149.193:8181"
        let baseDomain = "39.105.149.193"
        let mysqldbname  = "blog"
        let mysqlhost = "127.0.0.1"
        let mysqlport = 3306
        let mysqlpwd = "chengyakun11"
        let mysqluser =  "root"
        let httpport =  8181
        let pwd_secret = "xxxxxxxxxxxxxxxx" //-- 用于存储密码的盐, 16位数
        
        //重定向
        let endpointAfterAuth = "http://39.105.149.193:8181/auth/response/github"
        let redirectAfterAuth = "http://39.105.149.193:8181/register"
        
        let appid = "be10650a64cea7214597"
        let secret = "4809540e7284c8ce12dd2f7f3ba93e17db3e9438"
        
        let webroot = "/root/Swift4.1.2/BuNiu/webroot"
        let webrootView = "/root/Swift4.1.2/BuNiu/webroot/views/"
    }
    
#else
    struct ApplicationConfiguration {
        let baseURL =  "http://localhost:8181"
        let baseDomain = "localhost"
        let mysqldbname  = "blog"
        let mysqlhost = "127.0.0.1"
        let mysqlport = 3306
        let mysqlpwd = "OZ3%48i.Ys,n"
        let mysqluser =  "root"
        let httpport =  8181
        let pwd_secret = "xxxxxxxxxxxxxxxx" //-- 用于存储密码的盐 16位数
        
        //重定
        let endpointAfterAuth = "http://localhost:8181/auth/response/github"
        let redirectAfterAuth = "http://localhost:8181/register"
        
        let appid = "be10650a64cea7214597"
        let secret = "4809540e7284c8ce12dd2f7f3ba93e17db3e9438"
        
        
        let webroot = "/Users/zhangxun/BuNiu/webroot"
        let webrootView = "/Users/zhangxun/BuNiu/webroot/views/"
    }
#endif









