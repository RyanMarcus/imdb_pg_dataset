SELECT COUNT(*)
FROM
name as n,
aka_name as an,
info_type as it1,
person_info as pi1,
cast_info as ci,
role_type as rt
WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('G5245','H5215','H623','I3215','K4342','M6231','M6414','N1325','R53','S245','S3653','T143','Y251','Z2531'))
AND (ci.note in ('(executive producer)','(talent coordinator)','(voice) (uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('32'))
