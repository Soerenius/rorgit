SELECT r.guid, r.name, r.versiondate, r.versionid, r.description, r.collection FROM root_tables r, collections c WHERE r.guid=c.guid