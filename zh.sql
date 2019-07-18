/*
 Navicat Premium Data Transfer

 Source Server         : aaa
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : zh

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 05/07/2019 14:51:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zh_article
-- ----------------------------
DROP TABLE IF EXISTS `zh_article`;
CREATE TABLE `zh_article`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文档标题',
  `title_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题图片',
  `is_hot` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否热门1是0否',
  `is_top` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶1是0否',
  `cate_id` int(10) NOT NULL COMMENT '栏目主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文档内容',
  `pv` int(10) NOT NULL DEFAULT 0 COMMENT '阅读量',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态1显示0隐藏',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文档表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_article
-- ----------------------------
INSERT INTO `zh_article` VALUES (1, '你曾路过我的大学生活', '20190701/0327f683a82f526dbf750a2feb81ffe9.jpg', 0, 0, 6, 7, '<b>今天天气不错</b><div><b>这段时间一直在学习</b></div><div>感觉还行吧</div>', 3, 1, 1561958153, 1561958153);
INSERT INTO `zh_article` VALUES (2, '腾讯云服务器', '20190701/2162e9f67f65fa8ecca1e936e961b1b4.jpg', 0, 0, 7, 1, '<div>3)安装apache2</div><div><span style=\"white-space:pre\">		</span>sudo apt-get install apache2</div><div><span style=\"white-space:pre\">		</span>默认安装完成后是启动的，如果要手动启动使用：sudo /etc/init.d/apache2 start</div><div><span style=\"white-space:pre\">		</span>测试ps -ef | grep httpd&nbsp; 安装成功</div><div><br></div><div><span style=\"white-space:pre\">		</span>apache2的部署目录&nbsp; /var/www/html</div><div><span style=\"white-space:pre\">			</span>因ubuntu用户没有权限操作/var/www/html，可有以下两种解决方案</div><div><span style=\"white-space:pre\">				</span>第一种解决方案</div><div><span style=\"white-space:pre\">					</span>使用sudo临时提升权限，将 /var/www/html的权限设置成777，原先是755。设置了之后，ubuntu用户就可以往html目录中放置文件或文件夹了</div><div><span style=\"white-space:pre\">					</span>sudo chmod -R 777 /var/www/html</div><div><span style=\"white-space:pre\">				</span>第二种解决方案</div><div><span style=\"white-space:pre\">					</span>更改apache2的部署目录 在家目录创建文件apache/htdocs</div><div><span style=\"white-space:pre\">					</span>全路径 使用pwd查看&nbsp; /home/ubuntu/apache/htdocs</div><div><span style=\"white-space:pre\">					</span>更改两处：</div><div><span style=\"white-space:pre\">					</span>第一处：</div><div><span style=\"white-space:pre\">						</span>sudo vi /etc/apache2/sites-available/000-default.conf</div><div><span style=\"white-space:pre\">						</span>更改前：DocumentRoot /var/www/html</div><div><span style=\"white-space:pre\">						</span>更改后：DocumentRoot /home/ubuntu/apache/htdocs</div><div><span style=\"white-space:pre\">					</span>第二处：</div><div><span style=\"white-space:pre\">						</span>sudo vi /etc/apache2/apache2.conf</div><div><span style=\"white-space:pre\">						</span>在Directory群里添加</div><div><span style=\"white-space:pre\">						</span>&lt;Directory /home/ubuntu/apache/htdocs&gt;</div><div><span style=\"white-space:pre\">						</span>&lt;/Directory&gt;</div><div><span style=\"white-space:pre\">					</span>重启服务器：sudo /etc/init.d/apache2 restart</div><div><span style=\"white-space:pre\">		</span>将第一个项目部署到apache上，远程访问</div>                   \r\n                ', 0, 1, 1561978428, 1561978428);
INSERT INTO `zh_article` VALUES (3, '腾讯云服务器操作2', '20190701/79bd78afbef0b2408e39b8107d0a8e93.jpg', 0, 0, 7, 8, '<div>谨慎使用root用户操作ubuntu系统：（使用root登录）</div><div><span style=\"white-space:pre\">	</span>1.默认root用户不可登录，更改root用户登录</div><div><span style=\"white-space:pre\">		</span>sudo vim /etc/ssh/sshd_config</div><div><span style=\"white-space:pre\">			</span>找到这一行&nbsp;&nbsp;</div><div><span style=\"white-space:pre\">				</span>注释#PermitRootLogin prohibit-password</div><div><span style=\"white-space:pre\">				</span>PermitRootLogin yes</div><div><span style=\"white-space:pre\">				</span>sudo service ssh restart</div><div><span style=\"white-space:pre\">		</span>重新登录</div><div><br></div><div>2.本地安装</div><div><span style=\"white-space:pre\">	</span>在官网下载安装包后进行安装</div><div><span style=\"white-space:pre\">	</span>1)安装jdk环境</div><div><span style=\"white-space:pre\">		</span>上传到ubuntu家目录下</div><div><span style=\"white-space:pre\">		</span>使用sudo移动到到/opt</div><div><span style=\"white-space:pre\">		</span>sudo mv jdk-8u131-linux-x64.tar.gz /opt</div><div><span style=\"white-space:pre\">		</span>解压</div><div><span style=\"white-space:pre\">		</span>sudo tar -zxvf /opt/jdk-8u131-linux-x64.tar.gz&nbsp;</div><div><span style=\"white-space:pre\">		</span>vim ~/.bashrc</div><div><span style=\"white-space:pre\">			</span>在最末尾添加&nbsp;</div><div><span style=\"white-space:pre\">				</span>export JAVA_HOME=/opt/jdk1.8.0_131</div><div><span style=\"white-space:pre\">				</span>export CLASSPATH=.:./bin</div><div><span style=\"white-space:pre\">				</span>export PATH=$PATH:$JAVA_HOME/bin</div><div><span style=\"white-space:pre\">		</span>使更改的.bashrc文件生效</div><div><span style=\"white-space:pre\">			</span>source ~/.bashrc</div><div><span style=\"white-space:pre\">		</span>测试</div><div><span style=\"white-space:pre\">			</span>java -version</div><div><span style=\"white-space:pre\">			</span>有版本号出来则安装成功</div>                   \r\n                ', 2, 1, 1561978633, 1561978633);
INSERT INTO `zh_article` VALUES (46, '简单轮播图', '20190701/453e87432925e67d0ae8eeb1c761a1cd.png', 0, 0, 2, 8, '<div>&lt;!DOCTYPE html&gt;</div><div>&lt;html lang=\"en\"&gt;</div><div>&lt;head&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;meta charset=\"UTF-8\"&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;title&gt;Document&lt;/title&gt;</div><div><br></div><div><span style=\"white-space:pre\">	</span>&lt;style type=\"text/css\"&gt;</div><div><span style=\"white-space:pre\">	</span>&nbsp; &nbsp;.wai {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;width:720px;height:200px;margin:50px auto;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;overflow: hidden;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;position:relative;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; }</div><div>&nbsp; &nbsp; &nbsp; &nbsp; .wai2{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; width:100%;height:100%;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; }</div><div>&nbsp; &nbsp; &nbsp; &nbsp; .wai1{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; color:#fff;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; width:720px;height:30px;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; position:absolute;z-index:1000;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bottom:0;left:0;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; text-align:center;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; line-height: 30px;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; }</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; .wai1 .wai3{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; display:inline-block;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; width:20px;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; height:20px;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; line-height:20px;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; text-align:center;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; background:rgba(254,254,254,0.3);</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; border-radius: 50%;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cursor:pointer;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; }</div><div>&nbsp; &nbsp; &nbsp; &nbsp; .wai1 .wai3:hover{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; background:black;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; }</div><div><span style=\"white-space:pre\">	</span>&lt;/style&gt;</div><div>&lt;/head&gt;</div><div>&lt;body&gt;</div><div>&nbsp; &nbsp; &nbsp;&lt;div id=\"photo\" class=\"wai\"&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;a href=\"\"&gt;&lt;img src=\"images/01.jpeg\" class=\"wai2\"&gt;&lt;/a&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;a href=\"\"&gt;&lt;img src=\"images/02.jpg\" class=\"wai2\"&gt;&lt;/a&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;a href=\"\"&gt;&lt;img src=\"images/03.png\" class=\"wai2\"&gt;&lt;/a&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;a href=\"\"&gt;&lt;img src=\"images/04.png\" class=\"wai2\"&gt;&lt;/a&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;p class=\"wai1\"&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;span onclick=\"change(0)\" class=\"wai3\"&gt;1&lt;/span&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;span onclick=\"change(1)\" class=\"wai3\"&gt;2&lt;/span&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;span onclick=\"change(2)\" class=\"wai3\"&gt;3&lt;/span&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;span onclick=\"change(3)\" class=\"wai3\"&gt;4&lt;/span&gt;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/p&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp;&lt;/div&gt;</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp;&lt;script type=\"text/javascript\"&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; function change(num){</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;var obj=document.getElementById(\'photo\');</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;var obj_a=obj.getElementsByTagName(\'a\');</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for(var i=0;i&lt;obj_a.length;i++){</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; obj_a[i].style.display=\"none\";</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;obj_a[num].style.display=\"block\";</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div><br></div><div>&nbsp; &nbsp; &nbsp;&lt;/script&gt;</div><div>&lt;/body&gt;</div><div>&lt;/html&gt;</div><div><br></div>                   \r\n                ', 2, 1, 1561979852, 1561979852);
INSERT INTO `zh_article` VALUES (47, 'CSS动画', '20190701/93c61e23c252d9908f847dfba16b978d.png', 0, 0, 3, 8, '<div>&lt;!DOCTYPE html&gt;</div><div>&lt;html lang=\"en\"&gt;</div><div>&lt;head&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;meta charset=\"UTF-8\"&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;title&gt;炫酷动画&lt;/title&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;style&gt;</div><div><span style=\"white-space:pre\">		</span>body{</div><div>&nbsp; &nbsp; margin: 0;</div><div>&nbsp; &nbsp; background-color: #333;</div><div>}</div><div>.box{</div><div>&nbsp; &nbsp; width: 200px;</div><div>&nbsp; &nbsp; height: 200px;</div><div>&nbsp; &nbsp; box-sizing: border-box;</div><div>&nbsp; &nbsp; border: 1px solid #cb6341;</div><div>&nbsp; &nbsp; position: fixed;</div><div>&nbsp; &nbsp; left: 50%;</div><div>&nbsp; &nbsp; top: 50%;</div><div>&nbsp; &nbsp; margin-top: -100px;</div><div>&nbsp; &nbsp; margin-left: -100px;</div><div>}</div><div>.box:after, .box:before{</div><div>&nbsp; &nbsp; content: \"\";</div><div>&nbsp; &nbsp; width: 110%;</div><div>&nbsp; &nbsp; height: 110%;</div><div>&nbsp; &nbsp; box-sizing: border-box;</div><div>&nbsp; &nbsp; border: 2px solid;</div><div>&nbsp; &nbsp; position: absolute;</div><div>&nbsp; &nbsp; top: -5%;</div><div>&nbsp; &nbsp; left: -5%;</div><div>&nbsp; &nbsp; animation: boxBorder 6s linear infinite;</div><div>}</div><div>.box:before{</div><div>&nbsp; &nbsp; animation-delay: -3s;</div><div>}</div><div>.box .icon{</div><div>&nbsp; &nbsp; position: absolute;</div><div>&nbsp; &nbsp; top: 50%;</div><div>&nbsp; &nbsp; left: 50%;</div><div>&nbsp; &nbsp; width: 100px;</div><div>&nbsp; &nbsp; height: 100px;</div><div>&nbsp; &nbsp; margin-top: -50px;</div><div>&nbsp; &nbsp; margin-left: -50px;</div><div>&nbsp; &nbsp; animation: iconBox 3s linear infinite;</div><div>}</div><div>.box .icon:after,.box .icon:before{</div><div>&nbsp; &nbsp; content: \"\";</div><div>&nbsp; &nbsp; width: 40%;</div><div>&nbsp; &nbsp; height: 100%;</div><div>&nbsp; &nbsp; box-sizing: border-box;</div><div>&nbsp; &nbsp; border-radius: 50%;</div><div>&nbsp; &nbsp; border: 2px solid #fff;</div><div>&nbsp; &nbsp; position: absolute;</div><div>&nbsp; &nbsp; top: 0;</div><div>&nbsp; &nbsp; left: 30px;</div><div>&nbsp; &nbsp; animation: iconBorder 3s linear infinite;</div><div>}</div><div>.box .icon:after{</div><div>&nbsp; &nbsp; transform: rotate(60deg);</div><div>}</div><div>.box .icon:before{</div><div>&nbsp; &nbsp; transform: rotate(-60deg);</div><div>}</div><div>.box .icon2:before{</div><div>&nbsp; &nbsp; transform: rotate(0deg);</div><div>}</div><div>.box .icon2:after{</div><div>&nbsp; &nbsp; height: 10px;</div><div>&nbsp; &nbsp; width: 10px;</div><div>&nbsp; &nbsp; background-color: #fff;</div><div>&nbsp; &nbsp; transform: translate(12px,-6px);</div><div>&nbsp; &nbsp; border: 3px solid #333;</div><div>&nbsp; &nbsp; box-sizing: content-box;</div><div>&nbsp; &nbsp; animation: iconYuan 3s linear infinite 0.6s;</div><div>}</div><div>/* 布局结束 */</div><div>/* 动画开始 */</div><div>@keyframes iconBox {</div><div>&nbsp; &nbsp; 0%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; transform: rotate(0deg);</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 100%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; transform: rotate(360deg);</div><div>&nbsp; &nbsp; }</div><div>}</div><div>@keyframes iconBorder {</div><div>&nbsp; &nbsp; 0%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: #fff;</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 30%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: yellow;</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 60%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: blue;</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 100%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: red;</div><div>&nbsp; &nbsp; }</div><div>}</div><div>@keyframes iconYuan {</div><div>&nbsp; &nbsp; 0%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; background-color: #fff;</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 30%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; background-color: yellow;</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 60%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; background-color: blue;</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 100%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; background-color: red;</div><div>&nbsp; &nbsp; }</div><div>}</div><div>@keyframes boxBorder {</div><div>&nbsp; &nbsp; 0%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: #fff;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; clip: rect(0, 220px, 2px ,0);</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 25%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: yellow;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; clip: rect(0, 2px, 220px ,0);</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 50%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: blue;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; clip: rect(218px, 220px, 220px ,0);</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 75%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: green;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; clip: rect(0, 220px, 220px ,218px);</div><div>&nbsp; &nbsp; }</div><div>&nbsp; &nbsp; 100%{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; border-color: aqua;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; clip: rect(0, 220px, 2px ,0);</div><div>&nbsp; &nbsp; }</div><div>}</div><div><br></div><div><br></div><div><span style=\"white-space:pre\">	</span>&lt;/style&gt;</div><div>&lt;/head&gt;</div><div>&lt;body&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;div class=\"box\"&gt;&nbsp; &nbsp; &lt;div class=\"icon icon1\"&gt;&lt;/div&gt;&nbsp; &nbsp; &lt;div class=\"icon icon2\"&gt;&lt;/div&gt;&lt;/div&gt;</div><div>&lt;/body&gt;</div><div>&lt;/html&gt;</div>                   \r\n                ', 4, 1, 1561979989, 1561979989);
INSERT INTO `zh_article` VALUES (48, '58同城注册页', '20190701/60b806f289e390828aceeda221a9d998.png', 0, 0, 5, 8, '<div>&lt;!DOCTYPE html&gt;</div><div>&lt;html lang=\"en\"&gt;</div><div>&lt;head&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;meta charset=\"UTF-8\"&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;title&gt;58同城注册页&lt;/title&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;style&gt;</div><div><span style=\"white-space:pre\">		</span>html,body{</div><div><span style=\"white-space:pre\">			</span>margin:0 auto;</div><div><span style=\"white-space:pre\">			</span>padding:0;</div><div><span style=\"white-space:pre\">			</span>background-image: url(images/04.png);</div><div><span style=\"white-space:pre\">			</span>background-repeat: no-repeat;</div><div><span style=\"white-space:pre\">			</span>background-size: 100%;</div><div><span style=\"white-space:pre\">			</span>background-attachment: fixed;</div><div><span style=\"white-space:pre\">			</span>width:100%;</div><div><span style=\"white-space:pre\">			</span>height:100%;</div><div><br></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.main{</div><div><span style=\"white-space:pre\">			</span>margin:0 auto;</div><div><span style=\"white-space:pre\">			</span>width:480px;</div><div><span style=\"white-space:pre\">			</span>height:570px;</div><div><span style=\"white-space:pre\">			</span>/*border:1px solid white;*/</div><div><span style=\"white-space:pre\">			</span>/*background-color:#ffffff;*/</div><div><span style=\"white-space:pre\">			</span>margin-top:20px;</div><div><span style=\"white-space:pre\">			</span>position:relative;</div><div><br></div><div><br></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.main-h{</div><div><br></div><div><span style=\"white-space:pre\">			</span>width:480px;</div><div><span style=\"white-space:pre\">			</span>height:30px;</div><div><span style=\"white-space:pre\">			</span>border-bottom: 1px solid&nbsp; white;</div><div><span style=\"white-space:pre\">			</span>border-right: none;</div><div><span style=\"white-space:pre\">			</span>color:white;</div><div><span style=\"white-space:pre\">			</span>font-size: 12px;</div><div><br></div><div><br></div><div><span style=\"white-space:pre\">			</span></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>a{</div><div><span style=\"white-space:pre\">			</span>text-decoration: none;</div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.h-list2{</div><div><span style=\"white-space:pre\">			</span>float:right;</div><div><span style=\"white-space:pre\">			</span></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.main-b{</div><div><span style=\"white-space:pre\">			</span>width:480px;</div><div><span style=\"white-space:pre\">			</span>height:540px;</div><div><span style=\"white-space:pre\">			</span>border-right: 1px solid white;</div><div><span style=\"white-space:pre\">			</span>border-left: 1px solid white;</div><div><span style=\"white-space:pre\">			</span>border-bottom: 1px solid white;</div><div><span style=\"white-space:pre\">			</span>background-color:#ffffff;</div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.main .main-b img{</div><div><span style=\"white-space:pre\">			</span>display:block;</div><div><span style=\"white-space:pre\">			</span>height:100px;</div><div><span style=\"white-space:pre\">			</span>width:240px;</div><div><span style=\"white-space:pre\">			</span>position:relative;</div><div><span style=\"white-space:pre\">			</span>/*top:15px;*/</div><div><span style=\"white-space:pre\">			</span>left:120px;</div><div><br></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>input{</div><div><span style=\"white-space:pre\">			</span>width:350px;</div><div><span style=\"white-space:pre\">			</span>height:35px;</div><div><span style=\"white-space:pre\">			</span>border:1px solid #cdcdcd;</div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.b{</div><div><span style=\"white-space:pre\">			</span>margin-top: 5px;</div><div><span style=\"white-space:pre\">			</span>text-align: center;</div><div><span style=\"white-space:pre\">			</span></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.shuoming{</div><div><span style=\"white-space:pre\">			</span>margin-top: 20px;</div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.button{</div><div><span style=\"white-space:pre\">			</span>text-align: center;</div><div><span style=\"white-space:pre\">			</span>margin:20px;</div><div><span style=\"white-space:pre\">			</span></div><div><br></div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.foot{</div><div><span style=\"white-space:pre\">			</span>text-align: center;</div><div><span style=\"white-space:pre\">			</span>margin-top: 40px;</div><div><span style=\"white-space:pre\">		</span>}</div><div><br></div><div><span style=\"white-space:pre\">	</span>&lt;/style&gt;</div><div>&lt;/head&gt;</div><div>&lt;body&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;div class=\"main\"&gt;</div><div><span style=\"white-space:pre\">		</span>&lt;div class=\"main-h\"&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;span class=\"h-list1\"&gt;返回首页&lt;/span&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;span class=\"h-list2\"&gt;已有账号？去登录&lt;/span&gt;</div><div><span style=\"white-space:pre\">		</span>&lt;/div&gt;</div><div><span style=\"white-space:pre\">		</span>&lt;div class=\"main-b\"&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b-0\"&gt;&lt;img src=\"images/03.png\" alt=\"\"&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b\"&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b-1\" &gt;&lt;input type=\"text\" placeholder=\"手机号\" &gt;&lt;button style=\"border:1px solid #cdcdcd;width:90px;position:absolute;right:80px;top:145px;border-radius:5px \"&gt;获取动态码&lt;/button&gt;&lt;/div&gt;</div><div><br></div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b-2\" style=\"margin-top:25px\"&gt;&lt;input type=\"text\" placeholder=\"动态码\"&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b-3\" style=\"margin-top:25px\"&gt;&lt;input type=\"text\" placeholder=\"账户名\"&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b-4\" style=\"margin-top:25px\"&gt;&lt;input type=\"text\" placeholder=\"设置密码\"&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"b-5\" style=\"margin-top:25px\"&gt;&lt;input type=\"text\" placeholder=\"确认密码\"&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"shuoming\"&gt;&lt;span&gt;注册即同意&lt;a href=\"#\" style=\"color:red\"&gt;《58同城使用协议》&lt;/a&gt;&amp;&amp;nbsp;&lt;a href=\"#\" style=\"color:red\"&gt;《隐私政策》&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;/div&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;div class=\"button\"&gt;</div><div><span style=\"white-space:pre\">				</span>&lt;input type=\"button\" value=\"注册\" style=\"background-color:#FF552E\"&gt;</div><div><span style=\"white-space:pre\">			</span>&lt;/div&gt;</div><div><span style=\"white-space:pre\">		</span>&lt;/div&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;/div&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;div class=\"foot\"&gt;&lt;span style=\"margin-left:30px;color:white\"&gt;&amp;copy;58.com&lt;/span&gt;&lt;span style=\"margin-left:70px;color:white\"&gt;联系客服&lt;/span&gt;&lt;span style=\"margin-left:70px;color:white\"&gt;帮助&lt;/span&gt;&lt;/div&gt;</div><div>&lt;/body&gt;</div><div>&lt;/html&gt;</div>                   \r\n                ', 2, 1, 1561980259, 1561980259);
INSERT INTO `zh_article` VALUES (49, '图精灵技术', '20190701/5d0457bb90d6b53d36ae79a47d8aa3b1.png', 0, 0, 3, 8, '<div>&lt;!DOCTYPE html&gt;</div><div>&lt;html lang=\"en\"&gt;</div><div>&lt;head&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;meta charset=\"UTF-8\"&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;title&gt;图片精灵技术&lt;/title&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;style&gt;</div><div><span style=\"white-space:pre\">		</span>div{</div><div><span style=\"white-space:pre\">			</span>width:153px;</div><div><span style=\"white-space:pre\">			</span>height:156px;</div><div><span style=\"white-space:pre\">			</span>border:1px solid red;</div><div><span style=\"white-space:pre\">			</span>background-image: url(images/02.jpg);</div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.one{</div><div><span style=\"white-space:pre\">			</span>background-position: -120px -300px;&nbsp;</div><div><span style=\"white-space:pre\">		</span>}</div><div><span style=\"white-space:pre\">		</span>.two{</div><div><span style=\"white-space:pre\">			</span>background-position:-292px -471px;</div><div><span style=\"white-space:pre\">		</span>}</div><div><br></div><div><br></div><div><br></div><div><span style=\"white-space:pre\">	</span>&lt;/style&gt;</div><div>&lt;/head&gt;</div><div>&lt;body&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;div class=\"one\"&gt;&lt;/div&gt;</div><div><span style=\"white-space:pre\">	</span>&lt;div class=\"two\"&gt;&lt;/div&gt;</div><div>&lt;/body&gt;</div><div>&lt;/html&gt;</div>                   \r\n                ', 15, 1, 1561980498, 1561980498);
INSERT INTO `zh_article` VALUES (50, 'html元素小结', '20190703/77317fd29c0c0a62399c93ec5fa1e70a.jpg', 0, 0, 5, 7, '块级元素和行内元素的相互转换，display:inline;display:block;<div>行内元素不能设置宽高，块级元素可以。清除浮动，子元素：clear:both.父元素：overflow:hidden;</div><div>表格table合并列colspan合并行rowspan。&nbsp; &nbsp; &nbsp; css层叠顺序 z-index.页面元素伸缩布局混乱，display:flex;计算宽度calc(100%-25px)*0.28;<b>注意：</b>计算元素宽高时记得加上border.</div><div>display可取值，none,inline,block,inline-block,flex</div>', 2, 1, 1562155506, 1562155506);
INSERT INTO `zh_article` VALUES (51, 'lniux常用命令', '20190704/14a2e5b415a9d4595b98ae860706421d.png', 0, 0, 8, 1, '<div>管道加过滤</div><div>$ ls /etc |&nbsp; grep passwd</div><div><br></div><div>查看更多</div><div>$ more /etc/passwd</div><div>$ more /etc/group</div><div><br></div><div>添加用户</div><div>adduser 用户名</div><div>创建到指定组</div><div>adduser --gid 1000 user2</div><div><br></div><div>创建组</div><div>addgroup 组名</div><div>more /etc/group</div><div><br></div><div>切换用户</div><div>su - root&nbsp;</div><div>su - ubuntu</div><div><br></div><div>更改用户组</div><div>usermod --gid 1000 user1</div><div><br></div><div>删除组</div><div>groupdel user1</div><div>只能删除空组</div><div>查看</div><div>more /etc/group</div><div><br></div><div>ls -a /etc/skel</div><div>pwd</div><div>touch a.txt创建文件</div><div>-rw-r--r--文件&nbsp; -&nbsp; 目录&nbsp; d&nbsp; &nbsp;读r 写w 执行x</div><div><br></div><div>编辑 vim 文件名 a.txt</div><div>i 插入模式</div><div>Esc 退出 shift zz</div><div>more a.txt查看</div><div>：q!强制退出不存盘</div><div>更改权限</div><div>chmod 777 a.txt</div><div>Esc : wq enter</div><div>mkdir 创建用户</div><div><br></div><div>删除用户</div><div>userdel -r user3</div><div>history 历史纪录</div><div>！34条命令</div><div><br></div><div>u&nbsp;</div><div>g</div><div>o(other)</div><div>r</div><div>w</div><div>x (execute)</div><div>chmod 777 index.html</div><div>chmod&nbsp; g+/-(rwx)</div><div>chmod&nbsp; 0+/-(rwx)</div><div><br></div><div>vi操作</div><div>&nbsp;rm *.js 删除.js文件</div><div>rmdir css</div><div>复制</div><div>cp /etc/passwd ~/a.txt</div><div><br></div><div><br></div><div>rm index.html删除文件</div><div>sudo more /etc/passwd查看用户</div><div>sudo 提高权限</div><div><br></div><div>：set nu 行号设置</div><div>命令yyp复制</div><div><br></div><div>touch 创建文件</div><div>分屏：split</div><div>ctrl&nbsp; ww 切换</div><div>：close关屏</div><div>：vsplit 竖屏</div><div>：open打开b.js</div><div><br></div><div>o&nbsp;</div><div>mv ~/test/index.html /var/www/html/test/</div><div>cp ~/test/index.html /var/www/html/test/index.html</div><div><br></div><div><br></div><div><br></div>                   \r\n                ', 7, 1, 1562238224, 1562238224);

-- ----------------------------
-- Table structure for zh_article_category
-- ----------------------------
DROP TABLE IF EXISTS `zh_article_category`;
CREATE TABLE `zh_article_category`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目名称',
  `sort` int(4) NOT NULL COMMENT '栏目排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态1启用0禁用',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文档栏目表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_article_category
-- ----------------------------
INSERT INTO `zh_article_category` VALUES (1, 0, 'PHP', 5, 1, 0, 0);
INSERT INTO `zh_article_category` VALUES (2, 0, 'JavaScript', 1, 1, 0, 0);
INSERT INTO `zh_article_category` VALUES (3, 0, 'CSS', 2, 1, 0, 0);
INSERT INTO `zh_article_category` VALUES (5, 0, 'html', 7, 1, 0, 0);
INSERT INTO `zh_article_category` VALUES (6, 0, '随心记录', 6, 1, 0, 0);
INSERT INTO `zh_article_category` VALUES (7, 0, '其他', 8, 1, 0, 0);
INSERT INTO `zh_article_category` VALUES (8, 0, 'linux', 4, 1, 0, 0);

-- ----------------------------
-- Table structure for zh_site
-- ----------------------------
DROP TABLE IF EXISTS `zh_site`;
CREATE TABLE `zh_site`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '默认站点' COMMENT '网站名称',
  `keywords` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站描述',
  `is_open` tinyint(4) NOT NULL DEFAULT 1 COMMENT '开启状态1开0关',
  `is_comment` tinyint(4) NOT NULL DEFAULT 1 COMMENT '允许评论1开0关',
  `is_reg` tinyint(4) NOT NULL DEFAULT 1 COMMENT '允许注册1开0关',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态1允许0禁用',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_site
-- ----------------------------
INSERT INTO `zh_site` VALUES (1, '我的网站', '社区论坛网', '网站描述', 1, 1, 1, 1, 0, 0);

-- ----------------------------
-- Table structure for zh_user
-- ----------------------------
DROP TABLE IF EXISTS `zh_user`;
CREATE TABLE `zh_user`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `is_admin` int(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否管理员1是0否',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态1启用0禁用',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_user
-- ----------------------------
INSERT INTO `zh_user` VALUES (1, 1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@qq.com', '19845678998', 1, 1561957372, 1561957372);
INSERT INTO `zh_user` VALUES (7, 0, 'luokaixing', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'luokaixing@qq.com', '15197948632', 1, 1561957587, 1561957587);
INSERT INTO `zh_user` VALUES (8, 0, 'xiaoluo', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'xiaoluo@qq.com', '15988662244', 1, 1561977661, 1561977661);

-- ----------------------------
-- Table structure for zh_user_comments
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_comments`;
CREATE TABLE `zh_user_comments`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `article_id` int(10) NOT NULL COMMENT '文档主键',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文档内容',
  `reply_id` int(10) NOT NULL DEFAULT 0 COMMENT '回复ID',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态1显示0隐藏',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文档评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_user_comments
-- ----------------------------
INSERT INTO `zh_user_comments` VALUES (1, 8, 49, '我的第一次评论', 0, 1, 1561994832, 1561994832);
INSERT INTO `zh_user_comments` VALUES (2, 8, 49, '第二次提交', 0, 1, 1561996196, 1561996196);
INSERT INTO `zh_user_comments` VALUES (3, 8, 49, '第二次提交', 0, 1, 1561996202, 1561996202);
INSERT INTO `zh_user_comments` VALUES (4, 8, 49, '今天天气不错', 0, 1, 1562028973, 1562028973);
INSERT INTO `zh_user_comments` VALUES (5, 7, 50, '无聊评论一下', 0, 1, 1562155546, 1562155546);
INSERT INTO `zh_user_comments` VALUES (6, 1, 51, '今天的收获不错哦\r\n', 0, 1, 1562238269, 1562238269);

-- ----------------------------
-- Table structure for zh_user_fav
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_fav`;
CREATE TABLE `zh_user_fav`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int(10) NOT NULL COMMENT '文档主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收藏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_user_fav
-- ----------------------------
INSERT INTO `zh_user_fav` VALUES (1, 22, 4);
INSERT INTO `zh_user_fav` VALUES (3, 45, 8);
INSERT INTO `zh_user_fav` VALUES (4, 3, 8);
INSERT INTO `zh_user_fav` VALUES (5, 49, 8);

-- ----------------------------
-- Table structure for zh_user_like
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_like`;
CREATE TABLE `zh_user_like`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NOT NULL COMMENT '用户主键',
  `art_id` int(10) NOT NULL COMMENT '文档主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户点赞表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
