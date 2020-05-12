drop table if exists users;
create table users (
    id int unsigned primary key auto_increment,
    name varchar(20),
    score float
);



insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkpji', 8.2);
insert into users (name, score) values ('dotinstall', 6.0);
insert into users (name, score) values ('tanaka', null);
insert into users (name, score) values ('yamaduchi', 4.9);
insert into users (name, score) values ('okada', 8.4);
insert into users (name, score) values ('tasiro', 2.1);
 


-- select
--     name,
--     score,
--     if (score > 5.0, 'OK', 'NG') as result
-- from
--     users;

create table users_with_team as
select
    id,
    name,
    score,
    case 
        when score > 8.0 then 'team-A'
        when score > 6.0 then 'team-B'
        else 'team-C'
    end as team
from
    users;
    
    select * from users_with_team;


