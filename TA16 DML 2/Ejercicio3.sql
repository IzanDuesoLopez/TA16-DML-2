use actividades;

#3.7
select cajas.NUMREFERENCIA, almacenes.LUGAR
from (cajas
inner join almacenes
on cajas.ALMACEN = almacenes.CODIGO)
group by cajas.NUMREFERENCIA;

#3.8
select count(cajas.NUMREFERENCIA), almacenes.LUGAR
from (cajas
inner join almacenes
on cajas.ALMACEN = almacenes.CODIGO)
group by almacenes.LUGAR;

#3.9
select almacenes.CODIGO, almacenes.CAPACIDAD, count(cajas.NUMREFERENCIA) AS CantidadCajas
from (almacenes
inner join cajas
on almacenes.CODIGO = cajas.ALMACEN)
group by almacenes.CODIGO
having almacenes.CAPACIDAD < count(cajas.NUMREFERENCIA);

#3.10
select cajas.NUMREFERENCIA, almacenes.LUGAR
from (cajas
inner join almacenes
on cajas.ALMACEN = almacenes.CODIGO)
group by cajas.NUMREFERENCIA
having almacenes.LUGAR = 'Bilbao';

#3.11
INSERT INTO `almacenes` VALUES (6,'Barcelona',3);

# 3.12
INSERT INTO `cajas` VALUES ('H5','Papel',200,2);

# 3.13
update cajas
set VALOR = VALOR - VALOR * 0.15;

# 3.14
update cajas
set VALOR = VALOR - VALOR * 0.2
where VALOR > (SELECT AVG(VALOR) FROM cajas);

# 3.15
Delete from cajas
where VALOR <= 100;

# 3.16
Delete from almacenes
where ALMACEN in (select CODIGO from almacenes where CAPACIDAD < (select count(*) from cajas where almacenes = CODIGO));
