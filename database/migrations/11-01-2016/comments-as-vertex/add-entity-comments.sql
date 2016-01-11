DROP CLASS Comments;
CREATE CLASS Comments EXTENDS V;
CREATE PROPERTY Comments.created_at date;
CREATE PROPERTY Comments.deleted_at date;
CREATE PROPERTY Comments.text STRING;
ALTER PROPERTY Comments.text MANDATORY TRUE;
