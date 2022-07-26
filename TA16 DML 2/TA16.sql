use actividades;

#1.13
select avg(p.PRECIO), n.NOMBRE 
from articulos AS p, fabricantes AS n
GROUP BY n.NOMBRE;

#1.14
select fabricantes.NOMBRE
from (fabricantes
inner join articulos 
on articulos.CODIGO = fabricantes.CODIGO)
group by fabricantes.NOMBRE
having avg(articulos.PRECIO) > 150;

#1.15
select NOMBRE, MIN(PRECIO) AS PrecioMinimo
from articulos
group by NOMBRE
order by MIN(PRECIO)
LIMIT 1;

#1.16
select articulos.NOMBRE, MAX(articulos.PRECIO), fabricantes.NOMBRE
from articulos
inner join fabricantes
on fabricantes.CODIGO = articulos.FABRICANTE
group by articulos.NOMBRE, fabricantes.NOMBRE
order by MAX(articulos.PRECIO) DESC;

#1.17
INSERT INTO `articulos` VALUES (11,'Altavoces',70,2);

#1.18
update articulos 
SET NOMBRE = 'Impresora Laser'
where CODIGO = 8;

#1.19
update articulos
set precio = precio * 0.9;

#1.20
update articulos
set precio = precio - 10
where precio > 120;


