DROP CLASS PostComments;
CREATE CLASS PostComments EXTENDS E;
CREATE PROPERTY PostComments.out LINK Post;
CREATE PROPERTY PostComments.in LINK Comments;
