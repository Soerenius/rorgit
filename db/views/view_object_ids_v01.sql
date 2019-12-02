SELECT r2.name as objekt, r1.name, r1.guid as search_collection_id
FROM root_tables r1, root_tables r2, object_tables o, relassigncollections rac, collections c
WHERE r1.guid=o.guid AND o.guid=rac.guid_relObject AND rac.guid_relCollection=c.guid AND r2.guid=c.guid;