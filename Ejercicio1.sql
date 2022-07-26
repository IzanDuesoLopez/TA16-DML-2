USE `actividades`;

# 1.1
select NOMBRE from articulos;

# 1.2
select NOMBRE, PRECIO from articulos;

# 1.3
select NOMBRE, PRECIO FROM articulos
where precio >= 200;

# 1.4
select NOMBRE, PRECIO FROM articulos
where PRECIO BETWEEN 60 AND 120;

# 1.5
select NOMBRE, PRECIO * 166.386 FROM articulos
