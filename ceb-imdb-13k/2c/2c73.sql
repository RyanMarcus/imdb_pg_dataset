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
AND (it1.id in ('2'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Argentina:13','Canada:18+','France:-12','Iceland:12','Iceland:L','Japan:G','Philippines:R-13','Singapore:R21','UK:12'))
AND (kt.kind in ('movie','tv series','video movie'))
AND (rt.role in ('composer','costume designer','guest','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#3.110)','(#4.146)','(1997-11-12)','(2005-03-19)','(2007-10-06)','(2008-07-30)','(2009-03-18)','A Very Harold & Kumar 3D Christmas','Beach','Best Week Ever','Broadcast Blues','Capital Punishment','Crime damour','Daddy Day Care','Emulsion','Jackass: The Movie','Neues Leben','No Turning Back','Perfect','Santa Baby','Segundas oportunidades','Spy Kids 2: Island of Lost Dreams','Terminus','The Prodigal Son','Thief','Vice','Young Adult'))
