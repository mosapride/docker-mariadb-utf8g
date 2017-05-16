FROM mariadb

# UTF-8
COPY conf.d/mariadb.cnf /etc/mysql/conf.d/

# 日本時間に設定
RUN apt-get update && apt-get install -y tzdata
RUN ln -snf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get clean
