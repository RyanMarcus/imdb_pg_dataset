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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('OFM:35 mm','PCS:Spherical','RAT:2.35 : 1'))
AND (mi2.info in ('Canada:G','Finland:(Banned)','USA:R','West Germany:12'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('director'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('bashing-in-head','french-countryside','fv-433-abbot-self-propelled-artillery','golf-resort','human-experimental-subjects','mace-the-spice','manager','martial-arts-breaking-technique','no-experience-necessary','pants','parti-quebecois','projectors','raven-eating-the-eye-of-a-dead-body','reluctant-hitman','sacred-object','shooting-with-two-guns','spitting-on-ones-hand','storyteller','threat-of-castration','unsolved-problem','watch-shop','weight-guessing','year-1802'))
