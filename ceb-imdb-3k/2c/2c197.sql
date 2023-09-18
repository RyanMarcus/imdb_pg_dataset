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
AND (it1.id in ('6'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Datasat','Dolby Digital','Dolby SR','Dolby','SDDS'))
AND (mi2.info IN ('Argentina','Austria','Belgium','Denmark','Ireland','Italy','Poland','Portugal','Soviet Union','Spain','Switzerland','West Germany'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','guest','producer','production designer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.27)','(#1.2828)','(#6.152)','(2002-05-20)','(2011-11-09)','Fashion One Correspondent Search London','Finale: Part 2','Fix My Friend','Getting There','Rollerball','Where the Heart Is'))
