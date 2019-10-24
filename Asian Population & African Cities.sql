--Asian Population

select sum(a.population) from city a
inner join country b on a.countrycode = b.code
where b.continent = 'Asia'

--African Cities

select a.name from city a
inner join country b on a.countrycode = b.code
where b.continent = 'Africa'
