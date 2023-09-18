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
AND (it1.id in ('1'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('100','22','25','30','7','70','82','85','9','91','93','95','USA:30','USA:60'))
AND (mi2.info in ('Mono','Stereo'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actress','composer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('art-publisher','body-in-dumpster','cell-transfer','dead-body-fed-to-pigs','dodging-bullets','finger-of-death','flying-bird','intro-sung-by-cast-member','kinetoscope','prison-fight','reference-to-flanneryoconnor','reference-to-reginald-rose','reference-to-ulysses','spanish-wine','starting-smoking','super-8','television-critic','unaired-episode','undead-priest','vibrating-bed','w.i.p','woman-pretending-to-be-a-man'))
