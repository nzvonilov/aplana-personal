# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups
INSERT INTO position (name) VALUES ('стажер');
INSERT INTO position (name) VALUES ('старший инженер-тестировщик');
INSERT INTO position (name) VALUES ('ведущий инженер-тестировщик');
INSERT INTO position (name) VALUES ('главный инженер-тестировщик');

INSERT INTO company (name, address) VALUES ('Сбербанк-технологии', 'Москва, наб. Новоданиловская, д.10, кор.3');
INSERT INTO company (name, address) VALUES ('Альфа банк', 'Москва, ул. Ольховская д.4, кор 2');

INSERT INTO project (name, company_id, address, specialization_id) VALUES ('Альфа-Клик', '2', 'Москва, ул. Ольховская д.4, кор 2', '1');
INSERT INTO project (name, company_id, address, specialization_id) VALUES ('ИБСО', '1', 'Москва, ул. Ольховская д.4, кор 2', '2');

INSERT INTO project_specialization (name) VALUES ('Функцональное тестирование');
INSERT INTO project_specialization (name) VALUES ('Автоматизированное тестирование');
INSERT INTO project_specialization (name) VALUES ('Нагрузочное тестирование');

# --- !Downs
delete from position;
delete from company;
delete from project;
delete from project_specialization;

