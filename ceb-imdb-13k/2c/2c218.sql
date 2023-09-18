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
AND (it1.id in ('18'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Acapulco, Guerrero, Mexico','Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','Corriganville, Ray Corrigan Ranch, Simi Valley, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Hong Kong, China','Los Angeles, California, USA','Madrid, Spain','Manhattan, New York City, New York, USA','Mexico City, Distrito Federal, Mexico','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','San Francisco, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (mi2.info IN ('Adventure','Comedy','History','Musical','Mystery','Sci-Fi','Sport','Thriller','Western'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.11)','(#1.17)','(#1.85)','(#3.43)','(#5.27)','A Piece of the Action','Accidents Will Happen','Born to Sing','Carrie','College Holiday','Cornered','Der Rosenkavalier','Diane','East Side, West Side','Exposed','Forbidden','Forever and a Day','Glückspilze','God Is My Co-Pilot','Jigsaw','La porteuse de pain','Les trois mousquetaires','Maratón','Roughly Speaking','Scandal Sheet','Seishun to wa nanda','Sing a Song of Murder','Springtime in the Rockies','Stagecoach','Stand Up and Be Counted','The Bait','The Big Night','The Circus','The Decision','The Facts of Life','The Final Hour','The Greatest Show on Earth','The Hard Way','The Taming of the Shrew','The Turning Point','The Visitor','Thérèse Raquin','Yankee Doodle Dandy'))
