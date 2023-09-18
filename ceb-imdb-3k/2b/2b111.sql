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
AND (it1.id in ('2'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('4-Track Stereo','Dolby Digital','SDDS','Silent','Stereo','Ultra Stereo'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('cinematographer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('aggressive-kiss','astaire-and-rogers','baryshnikov','commander-robert-byrd','guggenheim-museum-manhattan-new-york-city','japanese-military-police','jewish-marriage','note-from-teacher','okapi','out-on-a-limb','planetary-orbit','reference-to-haile-selassie','reflection','remote-computer-access','richard-polonetsky','rubber-clown','spelling-drill','tilganga','tired-child','versus-state','year-1543'))
