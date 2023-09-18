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
AND (it1.id in ('5'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Brazil:Livre','Canada:R','Finland:K-8','India:U','USA:GP','USA:R','USA:Unrated'))
AND (mi2.info IN ('Adult','Adventure','Animation','Documentary','Drama','Fantasy','Horror','Musical','Mystery','Sci-Fi','Thriller'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','director','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.12)','(#1.74)','(#1.88)','(#2.20)','(#5.22)','(#6.12)','(#6.14)','A Christmas Carol','A Matter of Life and Death','Accidents Will Happen','Anderssonskans Kalle','Arsenic and Old Lace','Batman','Broadway Bill','Brother Can You Spare a Dime','Buried Treasure','Chain of Events','Dansk melodi grand prix','Destry Rides Again','Detective Story','Illegal Entry','Jailhouse Rock','Jeder stirbt für sich allein','Jenny','Jet Pilot','Les trois mousquetaires','Love Letters','Mantrap','Mind Your Own Business','One Good Turn','Part 1','Pension Schöller','Quarta puntata','Safari','Stree','Sweet Charity','The Avenger','The Brothers','The Dark Angel','The Doctor','The Exile','The Farmer Takes a Wife','The Male Animal','The Opposite Sex','The Payoff','The Substitute','Threes a Crowd','War and Peace','What Are Friends For?','Whiplash'))
