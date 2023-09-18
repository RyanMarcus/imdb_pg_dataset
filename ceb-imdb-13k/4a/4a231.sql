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
AND (n.name_pcode_nf in ('A1412','A3531','A3626','A4516','B3563','B6325','C6452','D6142','J1625','J3512','K4165','L531','P42','P6152','R5252','S4145','T5235','X1656','Y1512'))
AND (ci.note in ('(executive producer)','(producer)','(production assistant)','(switcher)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
