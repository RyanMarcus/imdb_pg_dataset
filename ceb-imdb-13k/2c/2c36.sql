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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Animation','Biography','Music','Mystery','Short','Sport'))
AND (mi2.info IN ('CAM:Canon 5D Mark II','CAM:Canon 7D','OFM:Super 16','PCS:HDCAM SR','RAT:1.78 : 1'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director','editor'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.10093)','(#1.10148)','(#1.5295)','(#1.5710)','(#15.46)','(#4.85)','(#9.172)','(#9.4)','(1997-09-18)','(1998-06-22)','(2006-02-02)','(2010-12-19)','(2012-04-27)','A Fair to Remember','Be Prepared','Boogie','Booted','David Copperfield','February','Firehouse','Holidays','Last Party 2000','Liebe und Tod','Maid of Honor','Missed Connections','Police Academy: Mission to Moscow','Road House','Secret Truths','Senjo no Varukyuria 2: Garia Ôritsu Shikan Gakkô','The Magdalene Sisters','The Prodigal Son','Top 9 Results','Triangles','Wolf Creek'))
