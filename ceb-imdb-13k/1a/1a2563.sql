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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('141','43','74','Canada:30','USA:111','USA:25','USA:27','USA:76','USA:96'))
AND (mi2.info IN ('Barcelona, Cataluña, Spain','Boston, Massachusetts, USA','Budapest, Hungary','Buenos Aires, Federal District, Argentina','Detroit, Michigan, USA','Dublin, County Dublin, Ireland','Houston, Texas, USA','Long Beach, California, USA','Madrid, Spain','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','San Diego, California, USA','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Winnipeg, Manitoba, Canada'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('editor','production designer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
