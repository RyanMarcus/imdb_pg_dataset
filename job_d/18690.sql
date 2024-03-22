SELECT MIN(mi_idx.info) AS rating,
       MIN(t.title) AS western_dark_production
FROM info_type AS it1,
     info_type AS it2,
     keyword AS k,
     kind_type AS kt,
     movie_info AS mi,
     movie_info_idx AS mi_idx,
     movie_keyword AS mk,
     title AS t
WHERE it1.info = 'countries'
  AND it2.info = 'rating'
  AND kt.id = t.kind_id
  AND t.id = mi.movie_id
  AND t.id = mk.movie_id
  AND t.id = mi_idx.movie_id
  AND mk.movie_id = mi.movie_id
  AND mk.movie_id = mi_idx.movie_id
  AND mi.movie_id = mi_idx.movie_id
  AND k.id = mk.keyword_id
  AND it1.id = mi.info_type_id
  AND (t.title LIKE '%murder%'
       OR t.title LIKE '%Murder%'
       OR t.title LIKE '%Mord%')
  AND it2.id = mi_idx.info_type_id
  AND k.keyword IN ('sequel',
'first-person-narrative')
AND kt.kind = 'episode'
AND mi.info IN ('German',
'USA',
'Danish',
'Bulgaria',
'Denish',
'English',
'Denmark',
'American',
'Germany',
'USA')
AND mi_idx.info > '6'
AND t.production_year > 2000;