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