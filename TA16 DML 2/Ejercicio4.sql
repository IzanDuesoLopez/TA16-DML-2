# 4.1
select nombre from peliculas;

# 4.2
select distinct CALIFICACIONEDAD from peliculas;

# 4.3
select * from peliculas where CALIFICACIONEDAD is null;

# 4.4
select * from salas where pelicula is null;

# 4.5
select *
from (salas
inner join peliculas 
on salas.PELICULA = peliculas.CODIGO)
group by salas.CODIGO;

#4.6



# 4.7
select distinct p.NOMBRE, s.NOMBRE
from peliculas AS p, salas AS s
where s.PELICULA IS NULL;
