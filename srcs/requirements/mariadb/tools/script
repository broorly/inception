service mysql start 
mariadb -u root -e "CREATE DATABASE IF NOT EXISTS db_maria;"
mariadb -u root -e "CREATE USER 'mrafik'@'%' IDENTIFIED BY 'password' ; GRANT ALL PRIVILEGES ON *.* TO 'mrafik'@'%'; FLUSH PRIVILEGES; "
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password'; FLUSH PRIVILEGES;"

exec $@