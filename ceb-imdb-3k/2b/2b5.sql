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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Boston, Massachusetts, USA','Brooklyn, New York City, New York, USA','London, England, UK','Los Angeles, California, USA','Madrid, Spain','Manhattan, New York City, New York, USA','Mexico','Miami, Florida, USA','New York City, New York, USA','Paris, France','Philadelphia, Pennsylvania, USA','Santa Clarita, California, USA','Toronto, Ontario, Canada'))
AND (mi2.info in ('English','French','Spanish'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer','writer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('alabai','bird-in-cage','bride-to-be','brighton-beach-brooklyn-new-york-city','carrying-someone-on-ones-back','centered','heart-trouble','hit-with-an-umbrella','hunted-turns-hunter','journey','kidney-failure','leg-chains','legal-rights','long-underwear','media-spoof','motorbike-accident','open-sign','opry','red-party','sex-with-an-object','shakespeares-pericles','spooning','surprise-killer','town-boss','verse'))
