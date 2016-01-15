# Queries

## Random user selection

* get class clusters

```
SELECT classes[name='WVUser'].clusterIds FROM 0:1
```

* get random user from selected cluster and random range cut

```
SELECT FROM WVUser WHERE @rid > #12:200000 LIMIT 1
```

## Add post and bind to user

* use javascript function

```
var db = orient.getDatabase();
var gdb = orient.getGraph();

var v=gdb.addVertex('class:Post');
v.setProperty('externalID',externalID);
v.setProperty('short_description', shortDesc);
v.setProperty('full_description', fullDesc);
v.setProperty('image', image);

var e = gdb.addEdge('class:HasPost', gdb.getVertex(userRid), v, '1');


gdb.commit();

return v;
```

* use batch script (via rest api or java api) http://orientdb.com/docs/2.1/SQL-batch.html

```
BEGIN
let post = CREATE VERTEX POST SET externalID = 1, short_description = 'short', full_description = 'full', image='image'
let user = SELECT FROM WVUser WHERE @rid = #12:2
let edge = CREATE EDGE HasPost FROM $user TO $post
COMMIT
return $edge
```

## Add like to known post

 ```
 CREATE EDGE Likes FROM #12:0 TO #32:6 SET created_at = DATE();
 ```

## Add comment to known post

 ```
 CREATE EDGE Comments FROM #12:0 TO #32:6 set created_at = DATE(), text="text1";
 ```

## Add random friends connection

 * select random users like in previous example

 * check whether connection exists. if no than repeat step 1

 ```
 SELECT FROM FriendsWith WHERE (in = #12:1 AND out = #12:4) OR (in = #12:4 AND out = #12:1)
 ```

 * add connection

 ```
 CREATE EDGE FriendsWith FROM #12:8 TO #12:0 SET createdDate = DATE();
 ```

## Delete random friends connection

 * select random user like in previous example

 * get random friend (this will return all friends, select one randomly)

```
SELECT both('FriendsWith') FROM WVUser WHERE @rid = #12:1
```

* delete connection between users in both directions

```
DELETE EDGE FriendsWith WHERE (in = #12:1 AND out = #12:3) OR (in = #12:3 AND out = #12:1)
```
