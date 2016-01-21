# Performance testing queries

* Create user post (javascript function createPost(userRid, externalID, shortDesc, fullDesc, image, createDate))

```
var db = orient.getDatabase();
var gdb = orient.getGraph();

var v=gdb.addVertex('class:Post');
v.setProperty('externalID',externalID);
v.setProperty('short_description', shortDesc);
v.setProperty('full_description', fullDesc);
v.setProperty('image', image);
v.setProperty('created_at', createDate);

var e = gdb.addEdge('class:HasPost', gdb.getVertex(userRid), v, 'HasPost');


gdb.commit();

return v;
```

* Fetch user feed

```
SELECT expand(out('HasPost')) FROM #12:90000 ORDER BY created_at DESC LIMIT 50
```

* Fetch user friends feed

```
SELECT expand(both('FriendsWith').out('HasPost')) FROM #12:23 ORDER BY created_at DESC LIMIT 50
```

* Fetch user friends

```
SELECT expand(both('FriendsWith')) FROM #12:1 LIMIT 100
```

* Delete post

```
DELETE Vertex Post WHERE @rid = #32:15636445
```

* Update post

```
UPDATE Post SET short_description = 'Luca' WHERE @rid = #32:15636445
```