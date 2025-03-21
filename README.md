Домашнее задание по теме "Индексы" Дуркина Егора

Задание 1

Напишите запрос к учебной базе данных, который вернёт процентное отношение общего размера всех индексов к общему размеру всех таблиц.

![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/1.png)

Задание 2

Выполните explain analyze следующего запроса:

![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/2.1.png)

перечислите узкие места;
-> Window aggregate with buffering: sum(p.amount) OVER (PARTITION BY c.customer_id,f.title )   (actual time=2564..5621 rows=642000 loops=1)
-> Sort: c.customer_id, f.title  (actual time=2564..2639 rows=642000 loops=1)

оптимизируйте запрос: внесите корректировки по использованию операторов, при необходимости добавьте индексы.

![otvet](https://github.com/gpad212/8-03-hw/blob/main/img/2.2.png)
