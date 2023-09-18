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
AND (it2.id in ('17'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arriflex 535','CAM:Beaumont VistaVision Camera, Panavision Primo Lenses','CAM:PanArri 435, Panavision Primo Lenses','LAB:Adlabs Films Pvt. Ltd., Mumbai, India','LAB:DeLuxe, Hollywood (CA), USA','LAB:Laser Pacific Media Corporation, Los Angeles (CA), USA','LAB:MGM Laboratories Inc., USA','LAB:Medallion Film Laboratories, Toronto, Canada','LAB:Metrocolor','OFM:35 mm','PCS:HDCAM SR','PCS:HDCAM','PFM:35 mm','PFM:8 mm','PFM:D-Cinema'))
AND (mi2.info IN ('In September 1928, Warner Bros. Pictures purchased a majority interest in First National Pictures and from that point on, all "First National" productions were actually made under Warner Bros. control, even though the two companies continued to retain separate identities until the mid-1930s, after which time "A Warner Bros.-First National Picture" was often used.','Last show of the series.','One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.','One of over 700 Paramount productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.','This film is believed lost. Please check your attic.','This film is presumed lost. Please check your attic.'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('composer','editor','guest','miscellaneous crew','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
