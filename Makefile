root_password="DtWb3q2WcG0tc2fFgXi5sGx86XL7RT8g"

all: mysql

mysql:
	@ echo "mysql-server mysql-server/root_password password "${root_password} | sudo debconf-set-selections
	@ echo "mysql-server mysql-server/root_password_again password "${root_password} | sudo debconf-set-selections
	sudo apt-get -y install mysql-server

clean:
	
.PHONY: all clean

