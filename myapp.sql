drop table if exists users;
create table users (
    name varchar(20),
    score float
);

alter table users add index index_score (score);
show index from users;

-- explain select * from users where score > 5.0;
-- explain select * from users where name > "taguchi";

alter table users drop index index_score;
show index from users;