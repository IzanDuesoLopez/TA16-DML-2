#2.1
select APELLIDOS
from empleados;

#2.2
select distinct APELLIDOS
from empleados;

#2.3
select *
from empleados
where APELLIDOS = 'Smith';

#2.4
select *
from empleados
where APELLIDOS = 'Smith' OR APELLIDOS = 'Rogers';

#2.5
select *
from empleados
where DEPARTAMENTO = 14;

#2.6
select *
from empleados
where DEPARTAMENTO = 37 OR DEPARTAMENTO = 77;

#2.7
select APELLIDOS from empleados
where APELLIDOS Like 'P%';

#2.8
select SUM(PRESUPUESTO) from departamentos;

#2.9
select Count(empleados)
from departamentos;

#2.10
select empleados.nombre as nombre, empleados.APELLIDOS as APELLIDOS, empleados.DNI as DNI, empleados.DEPARTAMENTO as CODIGO_DEPARTAMENTO, departamentos.NOMBRE as NOMBRE, departamentos.PRESUPUESTO as PRESUPUESTO
from (empleados
INNER JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO);

#2.11
select empleados.nombre as nombre, empleados.APELLIDOS as APELLIDOS,  departamentos.NOMBRE as NOMBRE, departamentos.PRESUPUESTO as PRESUPUESTO
from (empleados
INNER JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO);

#2.12
select empleados.nombre, empleados.apellidos, departamentos.presupuesto
from empleados
inner join departamentos
on departamentos.codigo=empleados.departamento
where departamentos.presupuesto>60000;

#2.13
select * from departamentos
where presupuesto>(select avg(presupuesto) from departamentos);

#2.14
select departamentos.nombre
from departamentos
where departamentos.codigo in (
	select empleados.departamento 
    from empleados 
    group by empleados.departamento 
    having count(empleados.dni)>2
);

#2.15
insert into departamentos values (11, 'Calidad', 40000);
insert into empleados values (89267109, 'Esther', 'Vázquez', 11);

#2.16
update departamentos
SET PRESUPUESTO = PRESUPUESTO * 0.9;
select * from departamentos;

#2.17
update empleados
set DEPARTAMENTO = 14
where DEPARTAMENTO = 77;
select * from empleados;

#2.19
Delete from empleados
where departamento in (select codigo from departamentos where presupuesto >= 60000);

#2.20
DELETE FROM empleados;
