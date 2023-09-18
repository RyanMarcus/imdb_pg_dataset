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
AND (it1.id in ('18'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina','London, England, UK','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Rome, Lazio, Italy','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Vancouver, British Columbia, Canada'))
AND (mi2.info in ('Dolby Digital','Dolby','Mono','Stereo'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('production designer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('anal-sex','bare-breasts','bare-chested-male','father-daughter-relationship','female-nudity','fight','friendship','homosexual','husband-wife-relationship','lesbian-sex','mother-daughter-relationship','mother-son-relationship','non-fiction','number-in-title','one-word-title','revenge','sex','tv-mini-series','violence'))
