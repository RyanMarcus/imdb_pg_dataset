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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Silent','Stereo'))
AND (mi2.info IN ('Berlin, Germany','Buenos Aires, Federal District, Argentina','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Mexico','Paris, France','Rome, Lazio, Italy','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actress','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.64)','(#4.10)','(#4.22)','Anastasia','Aoi sanmyaku','Arizona','Der Meineidbauer','Designing Woman','Die Fledermaus','Game 4','Handle with Care','Heat Wave','Hypnotized','Kill or Cure','Last Chance','Law and Disorder','Line of Fire','Magnificent Obsession','Maratón','My Fair Lady','New Musical Express Poll Winners Concert','Rebellion','See No Evil','Six Bridges to Cross','Stagecoach','The Call of the Wild','The Countess','The Gilded Lily','The Hospital','The Invisible Man','The Prince and the Pauper','Unusual Occupations','Washington Story'))
