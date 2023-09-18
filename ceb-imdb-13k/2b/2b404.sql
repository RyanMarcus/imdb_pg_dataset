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
AND (mi1.info in ('OFM:35 mm','PCS:Digital Intermediate','PCS:Spherical','PFM:35 mm','PFM:D-Cinema','RAT:1.33 : 1','RAT:16:9 HD','RAT:2.35 : 1'))
AND (mi2.info in ('Argentina:13','Australia:PG','France:U','Ireland:15A','Italy:T','New Zealand:R18','Peru:PT','Portugal:M/12','Singapore:M18','South Korea:All','Switzerland:14','UK:PG','USA:TV-PG'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('composer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('crabbiness','drinking-competition','eating-off-a-table-top','failing-student','family-computer-disk-system','forgotten-birthday','indian-classical-music','leg-blown-off','passport','porto','restraining-strap','romanian-revolution','san-quentin','singing-to-self','slow-motion-carnage','stenography-school','voodoo-queen'))
