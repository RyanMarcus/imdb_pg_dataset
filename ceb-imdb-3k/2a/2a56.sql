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
AND (mi1.info in ('ABC Television Center - 4151 Prospect Avenue, Los Angeles, California, USA','London, England, UK','Los Angeles, California, USA','New York City, New York, USA','Paris, France','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Rome, Lazio, Italy','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Studio 33, CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA'))
AND (mi2.info in ('OFM:35 mm','OFM:Video','PCS:Spherical','PFM:35 mm','PFM:Video','RAT:1.33 : 1'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('cinematographer','director'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
