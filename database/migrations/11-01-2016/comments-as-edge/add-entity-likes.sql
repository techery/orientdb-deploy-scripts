DROP CLASS Likes;
CREATE CLASS Likes EXTENDS E;
CREATE PROPERTY Likes.created_ad date;
CREATE PROPERTY Likes.out LINK WVUser;
CREATE PROPERTY Likes.in LINK Post;
