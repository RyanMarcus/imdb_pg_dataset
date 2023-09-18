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
AND (it1.id in ('7'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('LAB:Boyana Film Laboratory, Sofia, Bulgaria','LAB:Kinuta Laboratories, Tokyo, Japan','LAB:Technicolor, Hollywood (CA), USA','OFM:35 mm','PCS:CinemaScope','PCS:Redcode RAW','PFM:16 mm','PFM:35 mm','RAT:1.33 : 1','RAT:1.37 : 1','RAT:16:9 HD','RAT:2.35 : 1'))
AND (mi2.info in ('Bulgarian','Cantonese','English','German','Hindi','Italian','Japanese','Korean','Spanish','Swedish'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('editor'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bergdorfs-department-store-manhattan-new-york-city','cabin','closing-monologue','gram','horseshoe','klussen','mountain-crossing','mullet','mylar-helium-balloon','nathan-hill','national-inquirer-magazine','native','painting-a-bicycle','pharmacy','post-world-war-two-germany','recovering-from-illness','reference-to-bee','reference-to-mobile-alabama','special-school','thumbelina','western-music','woman-general','z-boson'))
