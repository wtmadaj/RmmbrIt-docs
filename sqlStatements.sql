INSERT INTO Users  (user_id) VALUES ('new-user-1');

INSERT INTO Tags (tag_id, tag_name) VALUES ('tag-id-1','category');

INSERT INTO NoteTags(note_id,tag_id) VALUES('note-id-1','tag-id-1');

INSERT INTO Notes (
note_id, 
user_id, 
title, 
content, 
tag_count, 
attachment_count, 
created_at,
updated_at) 
VALUES (
'note-id-2',  
'new-user-1', 
 'Another entry',  
 'Put the info you want to remember here', 
 '1',
 '0',
 '0',
 '0');
	