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

# 2.7
select APELLIDOS from empleados
where APELLIDOS Like 'P%';

# 2.8
select SUM(PRESUPUESTO) from departamentos;

# 2.9
select Count(empleados)
from departamentos;

# 2.10
select empleados.nombre as nombre, empleados.APELLIDOS as APELLIDOS, empleados.DNI as DNI, empleados.DEPARTAMENTO as CODIGO_DEPARTAMENTO, departamentos.NOMBRE as NOMBRE, departamentos.PRESUPUESTO as PRESUPUESTO
from (empleados
INNER JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO);

# 2.11
select empleados.nombre as nombre, empleados.APELLIDOS as APELLIDOS,  departamentos.NOMBRE as NOMBRE, departamentos.PRESUPUESTO as PRESUPUESTO
from (empleados
INNER JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO);
