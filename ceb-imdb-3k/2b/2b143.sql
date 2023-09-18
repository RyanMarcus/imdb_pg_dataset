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
AND (mi1.info in ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Berlin, Germany','CBS Studio 50, New York City, New York, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','Mexico','Paris, France','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Vancouver, British Columbia, Canada'))
AND (mi2.info in ('OFM:35 mm','PCS:Spherical','PFM:35 mm','RAT:1.33 : 1','RAT:1.85 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actress','costume designer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bare-breasts','based-on-play','character-name-in-title','dancing','lesbian-sex','male-nudity','murder','nudity'))
