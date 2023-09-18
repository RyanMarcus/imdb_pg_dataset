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
AND (it1.id in ('3'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Comedy','Crime','Documentary','Drama','Game-Show','Mystery','News','Romance','Sci-Fi','Short','Sport','War','Western'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Silent','Stereo'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('costume designer','editor'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.48)','(#1.63)','A Family Affair','Bobby','Experiment Perilous','Holiday','Linda','Lover Come Back','Mighty Joe Young','Olympia 1. Teil - Fest der Völker','Overland Mail','Part 6','Royal Cavalcade','Summer Holiday','The FBI Story','The Farmer Takes a Wife','The Man Who Broke the Bank at Monte Carlo','The Masterpiece','The Three Musketeers'))
