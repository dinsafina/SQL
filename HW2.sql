/*Создали таблицу employees с колонками id(первичный ключ), employee_name*/
create table employees (
   id serial primary key,
   employee_name varchar(50) not null
)

/*Добавили 70 значений в таблицу employees)*/
insert into employees (id, employee_name)
   values (default, 'Pearl Young'),
          (default, 'Amanda Schmidt'),
          (default, 'Henry White'),
          (default, 'Myrtle Hernandez'),
          (default, 'Maria Bridges'),
          (default, 'Jeffrey Carter'),
          (default, 'Jose Rodriguez'),
          (default, 'Donald Lewis'),
          (default, 'Karen Woods'),
          (default, 'John Clarke'),
          (default, 'Daniel Larson'),
          (default, 'Minnie Jordan'),
          (default, 'Stephen Clayton'),
          (default, 'Barbara Lambert'),
          (default, 'Nora Rogers'),
          (default, 'Edith Smith'),
          (default, 'Antonio Stewart'),
          (default, 'Armando Shelton'),
          (default, 'Robert Banks'),
          (default, 'William Kelley'),
          (default, 'Larry Reed'),
          (default, 'Tim Greene'),
          (default, 'Andrew Davis'),
          (default, 'Anthony Weber'),
          (default, 'Michael Jordan'),
          (default, 'Diane Armstrong'),
          (default, 'Maria Price'),
          (default, 'Cathy Greene'),
          (default, 'Dorothy Wood'),
          (default, 'Robert Palmer'),
          (default, 'Beverly Davis'),
          (default, 'Jeanette Pope'),
		  (default, 'Leon Dunn'),
          (default, 'Duane Adkins'),
		  (default, 'Charles Nelson'),
          (default, 'Donald Howard'),
          (default, 'Kay Pena'),
          (default, 'Clifton Myers'),
          (default, 'Pamela Hoffman'), 
          (default, 'John Dean'),
          (default, 'Linda Morris'),
          (default, 'Michael McDonald'),
          (default, 'Doris Phillips'),
          (default, 'Rhonda Hart'),
          (default, 'Margaret Carter'),
          (default, 'Jamie Brown'),
          (default, 'Cathy Hart'),
          (default, 'Amanda Ballard'),
          (default, 'Vickie Ellis'),
          (default, 'David Snyder'),
          (default, 'Alicia Ellis'),
          (default, 'Ramona Lee'),
          (default, 'Marion Adams'),
          (default, 'Irene Clark'),
          (default, 'Luis Jones'),
          (default, 'Clara Mills'),
          (default, 'Elaine Harvey'),
          (default, 'Victoria Ball'),
          (default, 'David Wood'),
          (default, 'Donald Brown'),
          (default, 'Glenn Pena'),
          (default, 'Ruby Reese'),
          (default, 'Samuel Hamilton'),
          (default, 'Vickie Gonzalez'),
          (default, 'Paul Garcia'),
          (default, 'Anna Jones'),
          (default, 'Richard Johnson'),
          (default, 'Valerie Higgins'),
          (default, 'Timothy Reynolds'),
          (default, 'Gladys Gill');
         
         
/*Создали таблицу salary со столбцами id(первичный ключ), monthly_salary*/
create table salary (
    id serial primary key,
    monthly_salary int not null
 )
 
 /*Добавили 16 значений в таблицу salary)*/
 insert into salary (monthly_salary)
     values (1000),
            (1100),
            (1200),
            (1300),
            (1400),
            (1500),
            (1600),
            (1700),
            (1800),
            (1900),
            (2000),
            (2100),
            (2200),
            (2300),
            (2400),
            (2500);
            

   /*Создали таблицу employee_salary со столбцами id(первичный ключ),
   * employee_id, salary_id*/
create table employee_salary (
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null
   )

   
   /*Наполнили таблицу employee_salary 40 строками:
- в 10 строк из 40 вставили несуществующие employee_id*/

insert into employee_salary (id, employee_id, salary_id )
   values (1, 3, 7),
          (2, 1, 4),
          (3, 5, 9),
          (4, 10, 13),
          (5, 23, 4),
          (6, 11, 2),
          (7, 52, 10),
          (8, 15, 13),
          (9, 26, 4),
          (10, 16, 1),
          (11, 33, 7),
          (12, 69, 5),
          (13, 61, 8),
          (14, 4, 10),
          (15, 70, 15),
          (16, 31, 14),
          (17, 58, 13),
          (18, 18, 11),
          (19, 46, 9),
          (20, 30, 7),
          (21, 6, 5),
          (22, 28, 3),
          (23, 21, 1),
          (24, 54, 2),
          (25, 44, 4),
          (26, 2, 6),
          (27, 65, 8),
          (28, 34, 10),
          (29, 53, 12),
          (30, 78, 14),
          (31, 79, 15),
          (32, 80, 13),
          (33, 85, 12),
          (34, 88, 11),
          (35, 87, 10),
          (36, 91, 9),
          (37, 95, 8),
          (38, 98, 7),
          (39, 94, 6),
          (40, 7, 5);


/*  Создали таблицу roles*/
create table roles (
    id serial primary key,
    role_name int not null unique
 )

/*Поменяли тип столба role_name с int на varchar(30)*/
alter table roles alter column role_name type varchar(30)
 
/*Наполнили таблицу roles 20 строками:*/
 insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineerv');



/*Создали дочернюю таблицу roles_employee со столбцами id, 
 * eployee_id(внешний ключ для таблицы eployeess(id), 
 * role_id(внешний ключ для таблицы roles(id)*/
create table roles_employee (
  id serial primary key,
  employee_id int not null unique,
  role_id int not null,
  foreign key (employee_id)
     references employees(id),
  foreign key (role_id)
     references roles (id)
)

/*Заполнили таблицу roles_id 40 строками*/
insert into roles_employee (id, employee_id, role_id)
  values (1, 7, 2),
         (2, 20, 4),
         (3, 3, 9),
         (4, 5, 13),
         (5, 23, 4),
         (6, 11, 2),
         (7, 15, 9),
         (8, 22, 13),
         (9, 21, 3),
         (10, 34, 4),
         (11, 6, 7),
         (12,58, 6),
         (13, 62, 5),
         (14, 2, 16),
         (15, 1, 10),
         (16, 12, 18),
         (17, 28,12),
         (18, 4, 8),
         (19, 14, 1),
         (20, 18, 9),
         (21, 29, 11),
         (22, 24, 17),
         (23, 8, 19),
         (24, 19, 8),
         (25, 30, 7),
         (26, 16, 10),
         (27, 27, 11),
         (28, 31, 15),
         (29, 13, 6),
         (30, 25, 20),
         (31, 9, 14),
         (32, 26, 12),
         (33, 17, 3),
         (34, 35, 5),
         (35, 33, 13),
         (36, 52, 1),
         (37, 36, 14),
         (38, 10, 4),
         (39, 47, 5),
         (40, 32, 2);
         
         
      select * from employees
      
      

