--- all sci-fi movies with case born in 1990's
SELECT min(t.title), min(pi.info)
FROM person_info as pi, info_type as it1, info_type as it2, name as n, cast_info as ci, title as t, movie_info as mi
WHERE
t.id = mi.movie_id
AND it2.id = 3
AND mi.info_type_id = it2.id
AND mi.info ILIKE '%sci%'
AND t.id = ci.movie_id
AND ci.person_id = n.id
AND n.id = pi.person_id
AND it1.info ILIKE 'birth date'
AND pi.info_type_id = it1.id
AND pi.info ILIKE '%199%';
