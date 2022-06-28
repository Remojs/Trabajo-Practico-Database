-- Creando Tabla --
create table empleados(
id_emp int unsigned not null auto_increment primary key,
nombre varchar(50) not null,
apellido varchar(50) not null,
trabajo varchar(50),
edad smallInt,
salario float,
mail varchar(100) not null
);

-- Agregando data --

insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (1,"Juan", "Hagan" , "Programador Senior", 32, 1200, "juan_hagan@bignet.com"),
(2,"Gonzalo", "Pillai" , "Programador Senior", 32, 1100, "g_pillai@bignet.com"),
(3,"Ana", "Dharma" , "Desarrollador Web", 27, 900, "ana@bignet.com"),
(4,"Maria", "Anchor" , "Desarrollador Web", 26, 850, "mary@bignet.com"),
(5,"Alfred", "Fernandez" , "Programador", 31, 750, "af@bignet.com"),
(6,"Juan", "Agüero" , "Programador", 36, 850, "juan@bignet.com"),
(7,"Eduardo", "Sacan" , "Programador", 25, 850, "eddi@bignet.com"),
(8,"Alejandro", "Nanda" , "Programador", 32, 700, "alenanda@bignet.com"),
(9,"Hernan", "Rosso" , "Especialista Multimedia", 33, 900, "hernan@bignet.com"),
(10,"Pablo", "Simon" , "Especialista Multimedia", 43, 850, "ps@bignet.com"),
(11,"Arturo", "Hernandez" , "Especialista Multimedia", 32, 750, "arturo@bignet.com"),
(12,"Jimena", "Cazado" , "Diseñador Web", 32, 1100, "jimena@bignet.com"),
(13,"Roberto", "Luis" , "Administrador de Sistemas", 35, 1000, "roberto@bignet.com"),
(14,"Daniel", "Gutierrez" , "Administrador de Sistemas", 34, 9000, "daniel@bignet.com"),
(15,"Miguel", "Harper" , "Ejecutivo de Ventas Senior", 36, 1200, "miguel@bignet.com"),
(16,"Monica", "Sanchez" , "Ejecutivo de Ventas", 30, 900, "monica@bignet.com"),
(17,"Alicia", "Simlai" , "Ejecutivo de Ventas", 27, 700, "alicia@bignet.com"),
(18,"Jose", "Iriarte" , "Ejecutivo de Ventas", 27, 720, "jose@bignet.com"),
(19,"Sabrina", "Allende" , "Gerente de Soporte Tecnico", 32, 2000, "sabrina@bignet.com"),
(20,"Pédro", "Campeon" , "Gerente de Finanzas", 36, 2200, "pedro@bignet.com"),
(21,"Mariano", "Dharma" , "Presidente", 28, 3000, "mariano@bignet.com");

-- Preguntas --

-- 1) ¿Cuales son los nombres y la ocupación de cada uno de los empleados? --

select nombre, trabajo from empleados;

-- 2) ¿Cuál es el nombre y la edad de cada uno de los empleados? --

select nombre, edad from empleados;

-- 3) ¿Cuál es el nombre y la edad de todos los programadores? --

select nombre, edad from empleados where trabajo = "Programador" or trabajo = "Programador Senior";

-- 4) ¿Cuáles son los empleados de mas de 30 años? --

select * from empleados where edad >= 30;

-- 5) ¿Cuál es el apellido y el mail de los empleados llamados Juan? --

select nombre, mail from empleados where nombre = "Juan";

-- 6) ¿Cuál es el nombre de las personas que trabajan como Programadores o Desarrolladores Web? --

select nombre, trabajo from empleados where trabajo = "Programador" or trabajo = "Desarrollador Web";

-- 7) Mostrar una lista (nro_emp, nombre, apellido, trabajo) las personas cuyo numero de empleado esté entre 15 y 20 --

select id_emp, nombre, apellido, trabajo from empleados where id_emp between 15 and 20;

-- 8) ¿Cuáles son los Programadores que ganan menos de $800? --

select * from empleados where salario <= 800;

-- 9) ¿Cuáles son los Programadores que ganan entre $750 y $900? --

select * from empleados where salario between 750 and 900;

-- 10) ¿Cuáles son los trabajadores cuyo apellido comienza con s? --

select * from empleados where apellido like "s%";

-- 11)¿Cuáles son los trabajadores cuyo nombre termina en l? --

select * from empleados where nombre like "%l";

-- 12) Agregar un empleado con ID_empleado 22 con los siguientes datos: Francisco Perez, Programador, 26 años, salario 900, mail: francisco@bignet.com --

insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values (22,"Francisco", "Perez" , "Programador", 26, 900, "francisco@bignet.com");

-- 13)Borrar los datos de Hernar Rosso --

delete from empleados where id_emp = 9;

-- 14)Modificar los datos de Daniel Gutierrez, salario 900. --

update empleados set salario = 900 where id_emp = 14;

