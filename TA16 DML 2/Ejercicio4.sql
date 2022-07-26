# 4.1
select nombre from peliculas;

# 4.2
select distinct CALIFICACIONEDAD from peliculas;

# 4.3
select * from peliculas where CALIFICACIONEDAD is null;

# 4.4
select * from salas where pelicula is null;