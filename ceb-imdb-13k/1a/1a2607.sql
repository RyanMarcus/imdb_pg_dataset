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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Agoura Hills, California, USA','Culver City, California, USA','Estudios Churubusco Azteca, Mexico City, Distrito Federal, Mexico','Lancaster, California, USA','Leipzig, Saxony, Germany','Massachusetts, USA','New York City, New York, USA','Royal Palace, Caserta, Campania, Italy','Stage 12, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Stage 43, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Studio Babelsberg, Potsdam, Brandenburg, Germany','Tower Theatre - 802 S. Broadway, Downtown, Los Angeles, California, USA','UK'))
AND (mi2.info IN ('Australia:14 October 2004','Canada:27 September 2005','Hungary:10 April 2004','Norway:11 May 2004','Portugal:10 October 2005','Sweden:24 January 2004','USA:2004','USA:2008','USA:2009','USA:2011','USA:5 September 2001'))
AND (kt.kind in ('movie','tv movie','video game'))
AND (rt.role in ('composer','miscellaneous crew','producer','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
