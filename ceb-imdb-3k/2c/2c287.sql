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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Canon XH-A1','LAB:Technicolor, Hollywood (CA), USA','LAB:Technicolor, UK','OFM:HD','PCS:Panavision'))
AND (mi2.info IN ('Action','Drama','Fantasy','Music','Musical','Reality-TV','Short'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.417)','(#1.6103)','(#1.6237)','(#1.6255)','(#12.94)','(#18.21)','(#2.151)','(#22.21)','(#3.77)','(1997-02-13)','(1997-03-19)','(2003-12-12)','(2010-01-21)','(2010-11-25)','A Bird in the Hand','Amália','Auditions: Los Angeles','Buenos Aires','Ces amours-là','Chapter Seventeen','Chicago Bears vs. St. Louis Rams','Chink','Clarity','Cthulhu','Damaged Goods','Die Hard','Emission Impossible','Full Court Press','Full Hearts','Grand Theft Auto IV','Home and Away','House of Blues','Ive Fallen for You','Jao Sees a New Side of Mikay','Lola: Érase una vez','Moses','Once in a Blue Moon','One in a Million','Rosenstrasse','Texas Justice','The Bride','The Comeback','The Dickensian Aspect','The Hillz','The Things We Do','Tony Hawk','Vanishing Point','Veterans Day','Wettlauf mit der Zeit','World Wide Wrestling'))
