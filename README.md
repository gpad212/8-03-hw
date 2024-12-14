Домашнее задание по теме "Система мониторинга Zabbix" Дуркина Егора

Задание 1
Прикрепите в файл README.md скриншот авторизации в админке.
![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/1.png)

Приложите в файл README.md текст использованных команд в GitHub.
wget https://repo.zabbix.com/zabbix/7.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.0+debian12_all.deb
dpkg -i zabbix-release_latest_7.0+debian12_all.deb
apt update 
apt install zabbix-server-pgsql zabbix-frontend-php php8.2-pgsql zabbix-nginx-conf zabbix-sql-scripts zabbix-agent
sudo apt install postgresql
sudo -u postgres createuser --pwprompt zabbix
sudo -u postgres createdb -O zabbix zabbix 
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix 
sudo nano /etc/zabbix/zabbix_server.conf 
sudo nano /etc/zabbix/nginx.conf 
sudo systemctl restart zabbix-server zabbix-agent nginx php8.2-fpm
sudo systemctl enable zabbix-server zabbix-agent nginx php8.2-fpm 


Задание 2
   
Приложите в файл README.md скриншот раздела Configuration > Hosts, где видно, что агенты подключены к серверу
![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/2-1.png)


Приложите в файл README.md скриншот лога zabbix agent, где видно, что он работает с сервером
![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/2-2.png)
![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/2-3.png)


Приложите в файл README.md скриншот раздела Monitoring > Latest data для обоих хостов, где видны поступающие от агентов данные.
![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/2-4.png)

Приложите в файл README.md текст использованных команд в GitHub
wget https://repo.zabbix.com/zabbix/7.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.0+debian12_all.deb
sudo dpkg -i zabbix-release_latest_7.0+debian12_all.deb
sudo apt update 
sudo apt install zabbix-agent
sudo nano /etc/zabbix/zabbix_agentd.conf
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent
