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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Comedy','Drama','Fantasy','Horror','Music','Musical','Mystery','Romance','Sci-Fi','Thriller'))
AND (mi2.info IN ('Australia:PG','Brazil:Livre','Canada:A','Chile:18','Finland:(Banned)','India:U','Italy:T','Italy:VM18','Netherlands:18','Portugal:M/18','USA:PG'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actor','director','producer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.159)','(#1.197)','(#1.401)','(#1.466)','(#1.538)','(#1.679)','(#1.875)','(#2.14)','(#9.8)','1984 NFL Draft','All Dogs Go to Heaven','All Star Comedy Carnival','Ashes to Ashes','Asylum','Austerlitz','Beyond a Reasonable Doubt','Black Magic','Blind Justice','Blind Mans Bluff','Bon Voyage','Captain America','Chicago Bears vs. Detroit Lions','Dancing in the Dark','Die Verschwörung','End of the Line','Evacuation','Grace Under Pressure','Identity Crisis','La Bohème','Macho Man','Maß für Maß','Melodi grand prix','No Way Out','Nobodys Fool','Oceans Eleven','Pacific Heights','Sweet Charity','Temptation','Terror','The Beauty Contest','The Champion','The Decline of Western Civilization Part II: The Metal Years','The Experts','The Good Samaritan','The Last Straw','The Road to War','The Searchers','The Untouchables','Without a Clue'))
