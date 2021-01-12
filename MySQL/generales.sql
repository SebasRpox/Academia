-- mysql -h localhost -u username -p
SHOW databases; -- Nos visualizar las bases de datos en MySQL
SHOW tables; -- Nos permite visualizar las tablas de la base de datos
USE academia; -- 
FLUSH PRIVILEGES;
CREATE USER 'nombre_usuario'@'localhost' IDENTIFIED BY 'tu_contraseña';
select user, password, host from user;
GRANT USAGE ON *.* TO 'Sebas'@'localhost' IDENTIFIED BY 'AcademiaGeek2021';
GRANT ALL PRIVILEGES ON academia.* TO 'Sebas'@'localhost';
GRANT SELECT, INSERT ON academia.*;