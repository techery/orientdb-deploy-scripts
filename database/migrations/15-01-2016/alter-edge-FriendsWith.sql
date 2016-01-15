DROP PROPERTY FriendsWith.out;
DROP PROPERTY FriendsWith.in  ;
CREATE PROPERTY FriendsWith.out LINK WVUser;
CREATE PROPERTY FriendsWith.in LINK WVUser;
CREATE INDEX FriendsWith_inout ON FriendsWith (in, out) UNIQUE_HASH_INDEX;
CREATE INDEX FriendsWith_outin ON FriendsWith (out, in) UNIQUE_HASH_INDEX;
