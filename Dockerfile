FROM mysql:5.7
 
#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY schema.sql /mysql/schema.sql
COPY grant.sql /mysql/grant.sql

CMD ["sh", "/mysql/setup.sh"]


