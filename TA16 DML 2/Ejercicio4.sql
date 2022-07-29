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

#4.8
insert into peliculas values (9789, "Uno, Dos, Tres", 7);

#4.9
update peliculas
set calificacionedad=13
where calificacionedad is null;

select * from peliculas 
where peliculas.calificacionedad=13;

#4.10
delete from salas
where pelicula in (
    select codigo
    from peliculas 
    where calificacionedad like '%G'
);
