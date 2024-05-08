# create schema knowget collate utf8mb4_general_ci;

# create database knowget;

# use knowget;
#
# create table users
# (
#     user_idx  bigint auto_increment
#         primary key,
#     delete_yn bit default b'0' null,
#     email     varchar(255)     not null,
#     id        varchar(255)     not null,
#     name      varchar(255)     not null,
#     password  varchar(255)     not null,
#     phone     varchar(255)     null,
#     constraint UK_6dotkott2kjsp8vw4d0m25fb7
#         unique (email),
#     constraint UK_6jvqtxgs6xvh0h0t261hurgqo
#         unique (id),
#     constraint UK_du5v5sr43g5bfnji4vb8hg5s3
#         unique (phone)
# );
#
# create table post
# (
#     post_idx      bigint auto_increment
#         primary key,
#     written_time  datetime(6)  null,
#     modified_time datetime(6)  null,
#     content       text         not null,
#     title         varchar(255) not null,
#     type          varchar(255) not null,
#     user_idx      bigint       not null,
#     constraint FKgbu4s4d7g7gjqw2uks2krksoo
#         foreign key (user_idx) references knowget.users (user_idx)
# );
#
# create table comment
# (
#     comment_idx   bigint auto_increment
#         primary key,
#     written_time  datetime(6) null,
#     modified_time datetime(6) null,
#     content       text        not null,
#     post_idx      bigint      not null,
#     user_idx      bigint      not null,
#     constraint FK4x0ed95d7btd26400uea2d7gt
#         foreign key (post_idx) references knowget.post (post_idx),
#     constraint FKayd6ry9svpxpvotcd7oxg5l7j
#         foreign key (user_idx) references knowget.users (user_idx)
# );