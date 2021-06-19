begin;

insert into ref.section (name)
values ('Прием в отделение кардиолога'),
       ('Клинический диагноз'),
       ('Проведенные обследования'),
       ('Консультации'),
       ('Лечение');

insert into ref.exam (name)
values ('Эхокардиография'),
       ('ЭКГ'),
       ('Биохимическое исследование крови');

insert into ref.advice (name)
values ('Кардиолог');

insert into ref.treatment(name)
values ('Консервативное'),
       ('Оперативное');

commit;