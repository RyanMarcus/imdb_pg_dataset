SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('16'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('USA:2002','USA:2004','USA:2006','USA:2007','USA:2008','USA:2010','USA:2011','USA:2013'))
AND (mi2.info in ('English'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actress'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bare-breasts','character-name-in-title','family-relationships','father-son-relationship','female-frontal-nudity','fight','flashback','gay','gun','husband-wife-relationship','independent-film','jealousy','lesbian-sex','male-frontal-nudity','mother-son-relationship','non-fiction','one-word-title','sequel','singer'))
