## Part 1. Готовый докер

Взять официальный докер образ с nginx и выкачать его при помощи **docker pull**

Проверить наличие докер образа через **docker images**

Запустить докер образ через **docker run -d [image_id|repository]**

Проверить, что образ запустился через **docker ps**

![Запуск nginx образа](./screen/1_1.png)

Посмотреть информацию о контейнере через **docker inspect [container_id|container_name]**

![Exposed Ports](./screen/1_2.png)

![IPAddress](./screen/1_3.png)

Информация о контейнере:

* Размер: 1.09kB (virtual 142MB)
* Порты: 80
* IP: 172.17.0.2

Остановить докер образ через **docker stop [container_id|container_name]**

![Остановка докер образа](./screen/1_4.png)

Запустить докер с замапленными портами 80 и 443 на локальную машину через команду run

Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx

![Запуск докера с замапленными портами](./screen/1_5.png)

![Cтартовая страница nginx по адресу localhost:80](./screen/1_6.png)

Перезапустить докер контейнер через **docker restart [container_id|container_name]**

Проверить любым способом, что контейнер запустился

![Перезапуск докера](./screen/1_7.png)

## Part 2. Операции с контейнером

Прочитать конфигурационный файл nginx.conf внутри докер образа через команду **exec**

![Заходим внутрь докера и читаем конф файл](./screen/2_1.png)

Создать на локальной машине файл nginx.conf
Настроить в нем по пути /status отдачу страницы статуса сервера nginx

![](./screen/2_5.png)

![](./screen/2_6.png)

Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp

![](./screen/2_3.png)

Перезапустить nginx внутри докер образа через команду exec

![](./screen/2_4.png)

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![](./screen/2_7.png)

Экспортировать контейнер в файл container.tar через команду export

![](./screen/2_8.png)

Остановить контейнер
![](./screen/2_9.png)

Удалить образ через **docker rmi [image_id|repository]**, не удаляя перед этим контейнеры

Импортировать контейнер обратно через команду import

![](./screen/2_11.png)

Запустить импортированный контейнер

![](./screen/2_12.png)