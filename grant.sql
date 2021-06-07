use mysql;
select host, user from user;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
create user root identified by 'root123';
-- 将eos数据库的权限授权给创建的root用户，密码为root123：
grant all on eos.* to root@'%' identified by 'root123' with grant option;

flush privileges;