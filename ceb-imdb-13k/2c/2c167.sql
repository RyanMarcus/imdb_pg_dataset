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
AND (it1.id in ('8'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Austria','Brazil','Georgia','India','Switzerland'))
AND (mi2.info IN ('Action','Animation','Biography','Fantasy','Game-Show','History','Horror','News','Romance','Short','Sport','Talk-Show','War','Western'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('actress','cinematographer','editor','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.167)','(#1.245)','(#1.869)','(#3.28)','(#4.1)','36 Hours','Belinda','Commando','Dreams','Inheritance','Its Only Money','No Place Like Home','Nothing Personal','Odd Man Out','Parlez-nous damour','Quicker Than the Eye','San Francisco 49ers vs. New York Giants','Search for Tomorrow','Skateboard','Someone to Watch Over Me','Trading Faces','WWF Club'))
