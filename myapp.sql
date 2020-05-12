drop table if exists posts;
create table posts (
    id int unsigned primary key auto_increment,
    title varchar(255),
    body text
);
drop table if exists comments;
create table comments (
    id int unsigned primary key auto_increment,
    post_id int unsigned not null,
    body text
);

-- alter table comments add constraint fk_comments foreign key (post_id) references posts (id);

insert into posts (title, body) values ('title1', 'body1');
insert into posts (title, body) values ('title2', 'body2');
insert into posts (title, body) values ('title3', 'body3');

insert into comments (post_id, body) values (1, 'first comments for post1');
insert into comments (post_id, body) values (1, 'second comments for post1');
insert into comments (post_id, body) values (3, 'first comments for post3');
insert into comments (post_id, body) values (4, 'first comments for post4');

delete from posts where id = 2;
insert into posts (title, body) values ('new title', 'new body');
insert into comments (post_id, body) values (last_insert_id(), 'first comments for new post');

select * from posts;
select * from comments;

-- select * from posts left join comments on posts.id = comments.post_id;
-- select * from posts right join comments on posts.id = comments.post_id;