create table "ROLE"(
    "id" serial primary key,
    "role_name" varchar(255)
);

create table "USER"(
    "id" serial primary key,
    "role_id" int,
    "name" varchar(255),
    "email" varchar(255),
    "password" varchar(255),

    constraint fk_role
        foreign key ("role_id")
        references "ROLE"("id")
);

create table "LOGIN"(
    "id" serial primary key,
    "user_id" int,

    constraint fk_user
        foreign key ("user_id")
        references "USER"("id")
);