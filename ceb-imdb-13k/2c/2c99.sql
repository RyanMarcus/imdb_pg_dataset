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
AND (it1.id in ('1'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('104','105','107','30','32','61','91','Germany:45','USA:14','USA:48','USA:82','USA:85','USA:90'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('editor','miscellaneous crew','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.207)','(#1.3486)','(#1.4273)','(#1.5286)','(#1.6067)','(#1.670)','(#2.53)','(#5.58)','(#8.45)','(2006-11-04)','(2007-06-24)','(2008-10-31)','(2009-01-01)','(2010-12-28)','(2011-12-01)','(2012-10-30)','Benjamin','Blowback','Burlesque','Capitulo 72','Country Boys','Do Over','Escape from L.A.','Excellent Cadavers','Faith','Future Perfect','Gala RTP 50 Anos','Heartless','Hidden Secrets','Honesty','Jurassic Bark','Lazos de sangre','Libera me','Me encanta que los planes salgan bien','Nit vint-i-cinc','One Weak Link','Phil Is a Choo-Choo Charlie','Powder Blue','Shes All That','Sinners','Soccer','Suddenly Single','Taking Control','The Garage','The Human Shield'))
