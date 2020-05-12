drop table if exists posts;
create table posts (
    id int unsigned primary key auto_increment,
    title varchar(255),
    body text
);
drop table if exists comments;
create table comments (
    id int unsigned primary key auto_increment,
    post_id int not null,
    body text
);

insert into posts (title, body) values ('title1', 'body1');
insert into posts (title, body) values ('title2', 'body2');
insert into posts (title, body) values ('title3', 'body3');

insert into comments (post_id, body) values (1, 'first comments for post1');
insert into comments (post_id, body) values (1, 'second comments for post1');
insert into comments (post_id, body) values (3, 'first comments for post3');
insert into comments (post_id, body) values (4, 'first comments for post4');

select * from posts;
select * from comments;

-- select * from posts  join comments on posts.id = comments.post_id;
-- select * from posts  join comments on posts.id = comments.post_id;
select posts.id, title, posts.body, comments.body from posts  join comments on posts.id = comments.post_id;

