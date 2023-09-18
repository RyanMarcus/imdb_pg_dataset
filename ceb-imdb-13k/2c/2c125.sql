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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Stereo'))
AND (mi2.info IN ('Adult','Biography','Comedy','Documentary','Music','Romance','Short','Western'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('cinematographer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.123)','(#1.17)','(#1.18)','(#1.4)','(#1.60)','(#5.12)','(#6.13)','A Cry for Help','Backlash','Bad Guy','Bad Medicine','Carnival','Conspiracy','Foreign Correspondent','Hot Money','Inferno','Mutiny on the Bounty','Party Girl','Reunion in France','Richard II Part 2: The Deposing of a King','Samson and Delilah','Saturday Night','Stree','The Drifter','The Gamble','The Gun','The Human Comedy','The Opposite Sex','The Outcast','The Outsider','The Rescue','The Scavengers','The Sniper','The Wrecker','Thirty Seconds Over Tokyo','Whom the Gods Destroy','Young Love'))
