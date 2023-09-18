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
AND (it1.id in ('7'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Boyana Film Laboratory, Sofia, Bulgaria','LAB:Movielab, USA','PCS:Tohoscope','PFM:Video','RAT:1.85 : 1','RAT:2.20 : 1'))
AND (mi2.info IN ('Albania','Belgium','Canada','Hungary','Iran','Israel','Italy','Mexico','Netherlands','Soviet Union','Spain','USA'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.166)','(#1.178)','(#1.244)','(#1.273)','(#1.33)','(#1.427)','(#1.483)','(#1.587)','(#1.717)','(#1.876)','(#1.99)','(#11.1)','(#2.15)','(#6.14)','Angustia','Babes in Toyland','Dead End','Der Hauptmann von Köpenick','Ein Kapitel für sich','Endgame','Family Affair','Fire Down Below','Higher Education','Hochzeit mit Hindernissen','Kraj rata','Legacy','Lorenzaccio','Mantrap','Miyamoto Musashi','New York Stories','Poor Little Rich Girl','Rain','Rebellion','Return','Robbery','Run for the Money','Spare the Rod','Starrcade','Stephen','TV or Not TV','The 42nd Annual Primetime Emmy Awards','The Godfather: Part III','The Heiress','The Little Mermaid','The Proposal','The Silent Partner','They Call Me Bruce?'))
