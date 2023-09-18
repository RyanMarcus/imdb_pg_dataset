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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Animation','Game-Show','Mystery','Romance','Thriller','War','Western'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','editor','production designer','writer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#5.15)','(#6.24)','Ah, Wilderness!','Caesars Wife','Custers Last Stand','Death Sentence','Delayed Action','Der Vogelhändler','Föltámadott a tenger','Gaslight','Jet Pilot','La chica del gato','Mistaken Identity','Mrs. Parkington','Music Hath Charms','One Life to Live','Pack Up Your Troubles','Ramona','Something for the Birds','Son of Sinbad','The Awful Truth','The Doctor','The Girl of the Golden West','The Inside Man','The Payoff','The Story of Will Rogers','Troubled Waters','Wing and a Prayer','Winged Victory'))
