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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Chicago, Illinois, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Madrid, Spain','Mexico City, Distrito Federal, Mexico','Mexico','Paris, France','Philippines','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Revue Studios, Hollywood, Los Angeles, California, USA','Rome, Lazio, Italy','San Francisco, California, USA','Shepperton Studios, Shepperton, Surrey, England, UK','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA'))
AND (mi2.info IN ('Australia','Belgium','Czechoslovakia','Germany','Soviet Union','Spain','USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('costume designer','director','editor','guest'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#7.2)','Brotherly Love','Confession','Death Trap','Jailbreak','Rio Grande','Sergeant Madden','Sun Valley Serenade','The Captive','The Debt','The Golden Fleece','The Green Pastures','The Kid','The Turning Point','Threes Company','Vanity Fair','Whirlpool'))
