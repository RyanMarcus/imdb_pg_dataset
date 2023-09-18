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
AND (it1.id in ('18'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Denham Studios, Denham, Buckinghamshire, England, UK','Janss Conejo Ranch, Thousand Oaks, California, USA','London, England, UK','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Rome, Lazio, Italy','San Francisco, California, USA','Twickenham Film Studios, St Margarets, Twickenham, Middlesex, England, UK'))
AND (mi2.info IN ('Argentina:13','Brazil:14','Finland:K-12','Finland:K-16','Finland:K-18','France:-12','Italy:VM18','Norway:16','Sweden:Btl','USA:PG','USA:TV-G','USA:TV-PG','USA:X','West Germany:16'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('director'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
