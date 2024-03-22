SELECT MIN(cn.name) AS from_company,
       MIN(lt.link) AS movie_link_type,
       MIN(t.title) AS non_polish_sequel_movie
FROM company_name AS cn,
     company_type AS ct,
     keyword AS k,
     link_type AS lt,
     movie_companies AS mc,
     movie_keyword AS mk,
     movie_link AS ml,
     title AS t
WHERE lt.id = ml.link_type_id
  AND ml.movie_id = t.id
  AND t.id = mk.movie_id
  AND mk.keyword_id = k.id
  AND t.id = mc.movie_id
  AND mc.company_type_id = ct.id
  AND mc.company_id = cn.id
  AND ml.movie_id = mk.movie_id
  AND ml.movie_id = mc.movie_id
  AND mk.movie_id = mc.movie_id
  AND lt.link LIKE '%follow%'
  AND (cn.name LIKE '%Film%'
       OR cn.name LIKE '%Warner%')
  AND mc.note IS NULL
  AND k.keyword = 'påskekrim'
AND cn.country_code <> '[sm]'
AND ct.kind = 'production companies'
AND t.production_year BETWEEN 1995  AND 2008;