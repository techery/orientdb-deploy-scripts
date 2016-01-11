DROP CLASS UserComments;
CREATE CLASS UserComments EXTENDS E;
CREATE PROPERTY UserComments.out LINK WVUser;
CREATE PROPERTY UserComments.in LINK Comments;
