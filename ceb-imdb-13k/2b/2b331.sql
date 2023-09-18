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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('CAM:Arriflex Cameras and Lenses','CAM:Canon 7D','LAB:DeLuxe','LAB:DeLuxe, Hollywood (CA), USA','PCS:HDCAM','PCS:HDTV','PCS:Redcode RAW','PFM:DVD-ROM','RAT:1.78 : 1 / (anamorphic)','RAT:16:9 HD'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actress','composer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('16th-street-baptist-church','anti-youth','belief-in-the-supernatural','big-belly','brother-brother-reunion','bulldyke','demand','headband','helping-a-poor-woman','hovel','hwatoo','indian-landlord','indonesian-war','ochlocracy','pretending-to-lose-ones-virginity','public-masturbation','rape-confession','reference-to-king-henry-iv','scrubbing-out-ones-mouth','su-chow-china'))
