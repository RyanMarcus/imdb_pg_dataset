SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('1'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('102','117','118','28','33','75','USA:30','USA:6'))
AND (mi2.info IN ('Adult','Animation','Comedy','Documentary','Horror','Mystery','Romance','Short','Thriller','Western'))
AND (kt.kind in ('movie','tv movie','video game'))
AND (rt.role in ('actor','editor','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.146)','(#1.155)','(#1.326)','(#1.70)','All-Star Party for Dutch Reagan','Anna','Cops and Robbers','Crime and Punishment','Das Vermächtnis','Hobsons Choice','Jacobs Ladder','Lionheart','Loophole','Monty Python and the Holy Grail','Part II','The Great Impostor','Twice Upon a Time'))
