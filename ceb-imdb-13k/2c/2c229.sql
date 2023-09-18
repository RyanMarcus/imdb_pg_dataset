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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina','Croatia','Denmark','Germany','Hungary','Israel','Luxembourg','Philippines','Puerto Rico','South Korea','Switzerland','United Arab Emirates'))
AND (mi2.info IN ('10','101','106','111','113','117','122','125','20','41','84','Germany:24','Japan:30','USA:57','USA:90'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actor','cinematographer','editor','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.3564)','(#1.4665)','(#1.5359)','(#21.1)','(#4.12)','(#6.156)','(#6.24)','(#9.66)','(1997-07-11)','(2000-07-12)','(2001-09-21)','(2002-04-25)','(2002-09-16)','(2010-10-14)','(2011-10-07)','(2013-01-18)','33','8 päivää ensi-iltaan','A Friend of the Family','An Affair to Remember','Antitrust','Austin','Blood Oath','Cheating','Crash Twinsanity','Crazy Heart','De erfenis','Der Spieler','Fieber','Hot Shot','Larry the Cable Guys Hula-Palooza Christmas Luau','Light Sleeper','Little Marines 2','Madrid','Music Hall','Paper Man','Parental Guidance Suggested','Snapped','The Baxter','The Driver','The Girl in the Park','The Pit','We Shall Remain: Part III - Trail of Tears','Whos Got Game?'))
