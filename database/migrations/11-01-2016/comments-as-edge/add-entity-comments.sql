DROP CLASS Comments;
CREATE CLASS Comments EXTENDS E;
CREATE PROPERTY Comments.created_at date;
CREATE PROPERTY Comments.deleted_at date;
CREATE PROPERTY Comments.text STRING;
ALTER PROPERTY Comments.text MANDATORY TRUE;
CREATE PROPERTY Comments.out LINK WVUser;
CREATE PROPERTY Comments.in LINK Post;
