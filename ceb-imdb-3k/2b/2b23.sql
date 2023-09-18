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
AND (it1.id in ('4'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('English','Italian','Japanese','Swedish'))
AND (mi2.info in ('Baltimore, Maryland, USA','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','India','Japan','Orlando, Florida, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 27, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 28A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 5, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stockholm, Stockholms län, Sweden','Studio 33, CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Studio 8H, NBC Studios - 30 Rockefeller Plaza, Manhattan, New York City, New York, USA','UK','Winnipeg, Manitoba, Canada'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('producer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bare-breasts','doctor','fight','friendship','hardcore','hospital','independent-film','interview','kidnapping','male-frontal-nudity','non-fiction','oral-sex','revenge','singing'))
