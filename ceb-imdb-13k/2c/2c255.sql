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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','AGA Sound System','Stereo','Vitaphone'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe','LAB:Technicolor','LAB:Technicolor, USA','OFM:16 mm','PCS:CinemaScope','PCS:Kinescope','PCS:Panavision','PCS:Spherical','PFM:16 mm','PFM:35 mm','PFM:Video','RAT:1.20 : 1','RAT:1.33 : 1','RAT:1.66 : 1'))
AND (kt.kind in ('episode','movie','tv series'))
AND (rt.role in ('actor','actress','costume designer','editor','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#3.15)','Caesars Wife','Dixie','Gold Fever','Golden Boy','Jealousy','Maridinho de Luxo','Million Dollar Mermaid','Revenge','Running Wild','Santa','Start Cheering','The Alibi','The Battle of the River Plate','The Lone Ranger Rides Again','Trial by Fire','Under Suspicion'))
