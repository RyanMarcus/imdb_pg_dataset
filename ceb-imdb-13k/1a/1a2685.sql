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
AND (mi1.info IN ('Bray Studios, Down Place, Oakley Green, Berkshire, England, UK','France','Kernville, California, USA','Malibu, California, USA','Miami, Florida, USA','Paramount Ranch - 2813 Cornell Road, Agoura, California, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Republic Studios, Hollywood, Los Angeles, California, USA','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Stage 11, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 6, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Twickenham Film Studios, St Margarets, Twickenham, Middlesex, England, UK','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Vienna, Austria'))
AND (mi2.info IN ('Argentina:13','France:-16','Iceland:L','Italy:VM14','Norway:15','South Korea:12','Spain:13','Spain:T','Sweden:15','Sweden:Btl','USA:GP','USA:M','USA:PG-13','West Germany:6'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
