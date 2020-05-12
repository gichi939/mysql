drop table if exists posts;
create table posts (
    id int unsigned primary key auto_increment,
    title varchar(255),
    body text
);
drop table if exists logs;
create table logs (
    id int unsigned primary key auto_increment,
    msg varchar(255)
);

drop trigger if exists posts_update_trigger;

-- 区切りの文字列を変える(delimiter)
delimiter //
create trigger posts_update_trigger after update on posts for each row 
begin
insert into logs (msg) values ('post update!');
insert into logs (msg) values (concat(old.title,'->', new.title));
end;
//
delimiter ;

insert into posts (title, body) values ('title1', 'body1');
insert into posts (title, body) values ('title2', 'body2');
insert into posts (title, body) values ('title3', 'body3');

update posts set title = 'title 2 update' where id = 2;
select * from posts;
select * from logs;

-- show triggers \G
