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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('ABC Television Center - 4151 Prospect Avenue, Los Angeles, California, USA','Berlin, Germany','Los Angeles, California, USA','Mexico','Stage 14, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Vancouver, British Columbia, Canada'))
AND (mi2.info in ('LAB:FotoKem Laboratory, Burbank (CA), USA','OFM:35 mm','PFM:35 mm','RAT:1.33 : 1'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('cinematographer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('bare-breasts','cigarette-smoking','doctor','dog','family-relationships','female-nudity','friendship','gay','gun','hospital','interview','kidnapping','male-nudity','new-york-city','non-fiction','oral-sex','party','police','song','suicide'))
