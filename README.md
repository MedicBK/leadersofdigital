<h4>Реализованная функциональность</h4>
<ul>
    <li>Функционал 1;</li>
    <li>Функционал 2;</li>
    <li>Функционал 3;</li>
</ul> 

<h4>Особенность проекта в следующем:</h4>
<ul>
 <li>Киллерфича-1;</li>
 <li>Киллерфича-2;</li>
 <li>Киллерфича-3;</li>  
 </ul>

<h4>Основной стек технологий:</h4>
<ul>
    <li>Kotlin</li>
	<li>Postgresql</li>
	<li>Spring</li>
 </ul>

<h4>Демо</h4>
<p>Демо сервиса доступно по адресу: https://demo.medicbk.com</p>




СРЕДА ЗАПУСКА
------------
1) развертывание сервиса производится на debian-like linux (debian 9+);
2) требуется установленный OpenJDK 11;
3) требуется установленная СУБД Postgresql (версия 11+);


УСТАНОВКА
------------
### Установка сервиса

Выполните
~~~
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openjdk-11-jdk
sudo apt-get install gradle
sudo apt-get install postgresql-12 postgresql-client-12 postgresql-contrib-12
sudo apt-get install git
sudo service postgresql start

Добавление пользователя для базы данных
sudo -u postgres psql -c "CREATE USER medex WITH SUPERUSER PASSWORD 'medex';"
sudo -u postgres createdb -O medex medex

git clone https://github.com/MedicBK/leadersofdigital.git
cd leadersofdigital

Выполнение миграций для базы данных
psql -h localhost -U medex -W medex < ./db/migrate/2021/06/2021_06_19_01.sql
psql -h localhost -U medex -W medex < ./db/migrate/2021/06/2021_06_19_02.sql

gradle wrapper --gradle-version 7.1 --distribution-type all
cp ./src/main/resources/application.yml.example ./src/main/resources/application.yml
./gradlew bootRun
~~~


РАЗРАБОТЧИКИ

<h4>Дондуков Максим</h4>
<a href="mailto:mdondukov@pm.me">mdondukov@pm.me</a>
<h4>Лофицкий Вадим</h4>

