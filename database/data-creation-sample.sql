connect remote:localhost/worldventures root 111111;

create vertex WVUser set userID = 1, externalID = 1;
create vertex WVUser set userID = 2, externalID = 2;
create vertex WVUser set userID = 3, externalID = 3;
create vertex WVUser set userID = 4, externalID = 4;
create vertex WVUser set userID = 5, externalID = 5;
create vertex WVUser set userID = 6, externalID = 6;
create vertex WVUser set userID = 7, externalID = 7;
create vertex WVUser set userID = 8, externalID = 8;
create vertex WVUser set userID = 9, externalID = 9;
create vertex WVUser set userID = 10, externalID = 10;


create edge FriendsWith from #12:0 to #12:3;
create edge FriendsWith from #12:0 to #12:4;
create edge FriendsWith from #12:0 to #12:5;
create edge FriendsWith from #12:0 to #12:6;
create edge FriendsWith from #12:0 to #12:7;


create edge FriendsWith from #12:1 to #12:3;
create edge FriendsWith from #12:1 to #12:4;
create edge FriendsWith from #12:1 to #12:5;
create edge FriendsWith from #12:1 to #12:6;
create edge FriendsWith from #12:1 to #12:7;


create edge FriendsWith from #12:2 to #12:3;
create edge FriendsWith from #12:2 to #12:4;
create edge FriendsWith from #12:2 to #12:5;
create edge FriendsWith from #12:2 to #12:6;
create edge FriendsWith from #12:2 to #12:7;

create edge FriendsWith from #12:0 to #12:7;

create edge FriendsWith from #12:8 to #12:0;
create edge FriendsWith from #12:8 to #12:7;
create edge FriendsWith from #12:7 to #12:0;


create vertex Post set externalID = 1;
create vertex Post set externalID = 2;
create vertex Post set externalID = 3;
create vertex Post set externalID = 4;
create vertex Post set externalID = 5;
create vertex Post set externalID = 6;

create edge HasPost FROM #12:0 TO  #32:0 set postDate = DATE();
create edge HasPost FROM #12:0 TO  #32:1 set postDate = DATE();
create edge HasPost FROM #12:0 TO  #32:2 set postDate = DATE();
create edge HasPost FROM #12:0 TO  #32:3 set postDate = DATE();
create edge HasPost FROM #12:0 TO  #32:4 set postDate = DATE();
create edge HasPost FROM #12:1 TO  #32:5 set postDate = DATE();
create edge HasPost FROM #12:2 TO  #32:6 set postDate = DATE();

create edge Likes FROM #12:0 TO #32:6 set created_at = DATE();
create edge Likes FROM #12:1 TO #32:0 set created_at = DATE();
create edge Likes FROM #12:2 TO #32:0 set created_at = DATE();
create edge Likes FROM #12:3 TO #32:0 set created_at = DATE();

create edge Likes FROM #12:3 TO #32:1 set created_at = DATE();

create edge Comments FROM #12:0 TO #32:6 set created_at = DATE(), text="text1";
create edge Comments FROM #12:1 TO #32:0 set created_at = DATE(), text="text2";
create edge Comments FROM #12:2 TO #32:0 set created_at = DATE(), text="text3";
create edge Comments FROM #12:3 TO #32:0 set created_at = DATE(), text="text4";

create edge Comments FROM #12:3 TO #32:1 set created_at = DATE(), text="text4";
create edge Comments FROM #12:3 TO #32:2 set created_at = DATE(), text="text4";
