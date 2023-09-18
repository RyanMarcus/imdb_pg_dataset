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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('DTS','Datasat','Dolby Digital','Dolby SR','Stereo','Ultra Stereo'))
AND (mi2.info IN ('Finland:K-15','France:U','Ireland:18','New Zealand:R16','Philippines:G','Spain:18','Switzerland:16','USA:G'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actress','cinematographer','director','editor','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.10036)','(#1.2729)','(#1.3462)','(#1.4924)','(#1.541)','(#13.53)','(#16.3)','(#6.33)','(#6.54)','(#6.82)','(2000-07-03)','(2002-01-16)','(2005-12-31)','(2009-09-13)','(2011-05-09)','Blindness','Chris & Co','Cult Commune','De prijs','Death Sentence','Flashpants','Flick','Hard Cases','Heat','Kinect Sports: Season Two','Koncert','Live by the Sword','May','Mixed Signals','Natasha','Shark','Sound of Noise','Tekken 4','The Anniversary','The Becoming','The Ghastly Love of Johnny X','The Last Hurrah','The Salon','Varsity Blues','Volta','Where the Heart Is'))
