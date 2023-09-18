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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Filmistan Studios, Mumbai, Maharashtra, India','Hong Kong, China','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','London, England, UK','Melbourne, Victoria, Australia','Stage 6, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','USA','Vancouver, British Columbia, Canada','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#16.60)','(#4.22)','(1992-05-22)','(2000-06-08)','(2008-10-25)','(2011-05-24)','(2011-11-16)','(2012-09-14)','Americas Cutest Dog','Andrew','Community Spirit','Das Findelkind','Die Eisprinzessin','Dream Girl','Floricienta','Four Corners','Four Sons','G.I. Joe: The Movie','Henry IV','House of Frankenstein','Michelle','Mikay Comes Closer to Yangdon','Misery Loves Company','Moving In','Offender','Out in the Open','Panacea','Pete Smalls Is Dead','Poudre aux yeux','Small Change','Sound of Noise','Tabu','The Big Apple','The Expert','The Good Guy','The Muppet Movie','Tubby Lunchbox','Week Four'))
