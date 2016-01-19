# Performance testing queries

* Create user post (use javascript function)

* Delete post

```
DELETE Vertex Post WHERE @rid = #32:15636445
```

* Update post

```
UPDATE Post SET short_description = 'Luca' WHERE @rid = #32:15636445
```

* Fetch user feed

```
SELECT expand(out('HasPost')) FROM #12:90000 ORDER BY created_at DESC LIMIT 50
```

* Fetch user friends feed

```
SELECT expand(both('FriendsWith').out('HasPost')) FROM #12:23 ORDER BY created_at DESC LIMIT 50
```

* Fetch user circle feed

```
SELECT expand(in('IsMemberOf').out('HasPost')) from #17:4 ORDER BY created_at DESC LIMIT 50
```

* Fetch user current and inherited circles feed

```
SELECT expand(in('IsMemberOf').out('HasPost')) from (TRAVERSE out('OwnsGroup') FROM #17:4) ORDER BY created_at DESC LIMIT 50
```

* Fetch user friends

```
SELECT expand(both('FriendsWith')) FROM #12:1
```

