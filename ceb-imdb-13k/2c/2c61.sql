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
AND (it1.id in ('6'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','DTS','DTS-ES','Dolby Digital','Dolby SR','Dolby Stereo','Dolby','Mono','Sonics-DDP'))
AND (mi2.info IN ('Finland:K-11','Hong Kong:IIB','Iceland:14','Spain:18','Sweden:15','Switzerland:12','UK:A','USA:TV-PG'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.2230)','(#1.5405)','(2002-10-02)','(2003-06-26)','(2005-11-21)','(2006-04-12)','(2007-11-26)','(2009-01-30)','(2010-02-13)','(2013-03-12)','Az ember tragédiája','Below','Der Neue','El cantante','Grounded','Hinter verschlossenen Türen','Is There a Doctor in the House?','La cité de la peur','Les contes dHoffmann','My Life in Ruins','Paradise Lost: Part 1','Passover','Pet Shop','Sgt. Kabukiman N.Y.P.D.','The Duke','The Grudge','The Perfect Crime','The Witnesses','Valhalla','When the Levees Broke: A Requiem in Four Acts'))
