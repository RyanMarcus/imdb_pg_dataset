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
AND (it1.id in ('17'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.','Premiere voted this movie as one of "The 50 Greatest Comedies Of All Time" in 2006.','The failure of the original copyright holder to renew the films copyright resulted in it falling into public domain, meaning that virtually anyone could duplicate and sell a VHS/DVD copy of the film. Therefore, many of the versions of this film available on the market are either severely (and usually badly) edited and/or of extremely poor quality, having been duped from second- or third-generation (or more) copies of the film.'))
AND (mi2.info IN ('Brazil:Livre','Canada:14','Canada:18A','Canada:A','Italy:VM14','Japan:G','Norway:15','UK:A','USA:M'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('guest','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
