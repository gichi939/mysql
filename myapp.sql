drop table if exists posts;
create table posts (
    id int unsigned primary key auto_increment,
    title varchar(255),
    body text,
    created datetime default current_timestamp,
    updated datetime default current_timestamp on update current_timestamp
);

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

update posts set created = '2020-5-12 17:55:00' where id =2;

-- select * from posts;
-- select * from posts where created > '2020-5-12 12:00';
-- select created, date_add(created, interval 14 day) from posts;

select created, date_format(created,'%W %M %Y') from posts;

-- mysqldump -u myapp_user -p myapp > 202005_myapp.backup.sql(データのバックアップの構文)
