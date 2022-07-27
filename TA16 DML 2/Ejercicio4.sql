# 4.1
select nombre from peliculas;

# 4.2
select distinct CALIFICACIONEDAD from peliculas;

# 4.3
select * from peliculas where CALIFICACIONEDAD is null;

# 4.4
select * from salas where pelicula is null;

# 4.5
select * from peliculas p
right join salas s 
on p.codigo = s.pelicula;

# 4.6
select * from salas s
right join peliculas p
on s.pelicula = p.codigo;

# 4.7
select distinct p.NOMBRE, s.NOMBRE
from peliculas AS p, salas AS s
where s.PELICULA IS NULL;
