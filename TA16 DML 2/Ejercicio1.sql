use actividades;

#1.6
select avg(precio) from articulos;

#1.7
select avg(precio) from articulos where fabricante=2;

#1.8
select count(codigo) from articulos where precio>=180;

#1.9
select nombre, precio from articulos
where precio>=180
order by precio desc;

select nombre, precio from articulos
where precio>=180
order by nombre;

#1.10
select * from articulos 
inner join fabricantes 
on articulos.fabricante=fabricantes.codigo;

#1.11
select articulos.nombre, articulos.precio, fabricantes.nombre as nombre_fabricante
from articulos
inner join fabricantes
on fabricantes.codigo=articulos.fabricante;

#1.12
select fabricantes.codigo as codigo_fabricante, avg(articulos.precio) as media_precio
from articulos
inner join fabricantes
on fabricantes.codigo=articulos.fabricante
group by codigo_fabricante;

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


