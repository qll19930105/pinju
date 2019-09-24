SET NAMES UTF8;
DROP DATABASE IF EXISTS pj;
CREATE DATABASE pj CHARSET=UTF8;
USE pj;

#品聚_基本信息表，logo，copyright
CREATE TABLE pj_site_info(
  logo VARCHAR(64),
  copyright VARCHAR(64)
);
INSERT INTO pj_site_info VALUES("images/logo.png","增值电信业务经营许可证：粤B2-20120020 粤ICP备11083474号");

#导航条目
CREATE TABLE pj_navbar_item(
  name VARCHAR(8),
  url VARCHAR(128)
);
INSERT INTO pj_navbar_item VALUES("首页","/index.html"); 
INSERT INTO pj_navbar_item VALUES("艺术品","/index.html");
INSERT INTO pj_navbar_item VALUES("拍卖","/index.html");
INSERT INTO pj_navbar_item VALUES("艺术家","/index.html");
INSERT INTO pj_navbar_item VALUES("每日推荐","/index.html");
INSERT INTO pj_navbar_item VALUES("艺术资讯","/index.html"); 
INSERT INTO pj_navbar_item VALUES("艺术机构","/index.html");
INSERT INTO pj_navbar_item VALUES("商品置换","/index.html");

#轮播图
CREATE TABLE pj_banner(
  img VARCHAR(64),
  url VARCHAR(128)
);
INSERT INTO pj_banner VALUES("images/banner01.png","/index.html");
INSERT INTO pj_banner VALUES("images/banner02.png","/index.html");
INSERT INTO pj_banner VALUES("images/banner03.png","/index.html");

#每日推荐
CREATE TABLE pj_rec_daily(
  name VARCHAR(16),
  img VARCHAR(64),
  price INT,
  url VARCHAR(128)
);
INSERT INTO pj_rec_daily VALUES("《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_rec_daily VALUES("玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_rec_daily VALUES("距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_rec_daily VALUES("厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_rec_daily VALUES("山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_rec_daily VALUES("《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_rec_daily VALUES("云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_rec_daily VALUES("渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");

#人气推荐轮播图
CREATE TABLE pj_rec_pop_banner(
  name VARCHAR(16),
  img VARCHAR(64),
  url VARCHAR(128)
);
INSERT INTO pj_rec_pop_banner VALUES("有磨砂玻璃的浴室","images/rec_pop/banner_pop1.jpeg","/index.html");
INSERT INTO pj_rec_pop_banner VALUES("唱丰年","images/rec_pop/banner_pop2.jpeg","/index.html");
INSERT INTO pj_rec_pop_banner VALUES("山水画卷之捍卫者","images/rec_pop/banner_pop3.jpeg","/index.html");

#人气推荐产品表
CREATE TABLE pj_rec_pop(
  name VARCHAR(16),
  img VARCHAR(64),
  price INT,
  url VARCHAR(128)
);
INSERT INTO pj_rec_pop VALUES("中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_rec_pop VALUES("《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_rec_pop VALUES("孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_rec_pop VALUES("迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_rec_pop VALUES("惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_rec_pop VALUES("A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_rec_pop VALUES("静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_rec_pop VALUES("《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_rec_pop VALUES("美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_rec_pop VALUES("Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_rec_pop VALUES("幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_rec_pop VALUES("《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_rec_pop VALUES("惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_rec_pop VALUES("作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_rec_pop VALUES("《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");

#产品总表
CREATE TABLE pj_products(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16),
  img VARCHAR(64),
  price INT,
  url VARCHAR(128)
);
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"惠风和畅","../img/index/rec_pop_13.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"作品一","../img/index/rec_pop_14.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《作品三》","../img/index/rec_pop_15.jpeg","3800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《平静只是一种表象》","../img/index/rec_daily_1.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"玉女 Teenage girl","../img/index/rec_daily_2.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"距离","../img/index/rec_daily_3.jpeg","3000","/index.html");
INSERT INTO pj_products VALUES(NULL,"厚德载物","../img/index/rec_daily_4.jpeg","40000","/index.html");
INSERT INTO pj_products VALUES(NULL,"山水画卷之捍卫者","../img/index/rec_daily_5.jpeg","4800","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_daily_6.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"云NO.2","../img/index/rec_daily_7.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"渔翁钓月，农夫耕霞","../img/index/rec_daily_8.jpeg","65000","/index.html");
INSERT INTO pj_products VALUES(NULL,"中国海滩","../img/index/rec_pop_1.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《儒者之性》","../img/index/rec_pop_2.jpeg","6000","/index.html");
INSERT INTO pj_products VALUES(NULL,"孙悟空","../img/index/rec_pop_3.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"迷雾之四 Dense fog","../img/index/rec_pop_4.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"惊蛰/春/秋月如钩","../img/index/rec_pop_5.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"A5","../img/index/rec_pop_6.jpeg","12000","/index.html");
INSERT INTO pj_products VALUES(NULL,"静观自在 Self-reflection","../img/index/rec_pop_7.jpeg","7600","/index.html");
INSERT INTO pj_products VALUES(NULL,"《金色的召唤》","../img/index/rec_pop_8.jpeg","32000","/index.html");
INSERT INTO pj_products VALUES(NULL,"美国河的春天","../img/index/rec_pop_9.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"Memory","../img/index/rec_pop_10.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"幻境","../img/index/rec_pop_11.jpeg","20000","/index.html");
INSERT INTO pj_products VALUES(NULL,"《get high》","../img/index/rec_pop_12.jpeg","7600","/index.html");