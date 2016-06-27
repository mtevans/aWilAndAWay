# Schema Information

## venue
column name | data type   | details
------------|-------------|-----------------------
id          | integer     | not null, primary key
title       | string      | not null, unique
about       | string      | not null
description | text        | not null
address     | integer     | not null
zip code    | string      | not null
email       | string      | not null
url         | text        | default (default image), not null
organizer_id| integer     | not null, foreign key (references users), indexed



## occasion
column name        | data type   | details
-------------------|-------------|-----------------------
id                 | integer     | not null, primary key
organizer_id       | string      | not null, unique
venue_id           | string      | not null
date               | date        | not null
start_time         | date        | not null
end_time           | date        | not null

## subscriptions (when a user volunteers for an occassion)

column name        | data type   | details
-------------------|-------------|-----------------------
id                 | integer     | not null, primary key
volunteer_id       | string      | not null
occasion_id        | string      | not null



## users
column name     | data type    | details
----------------|--------------|-----------------------
id              | integer      | not null, primary key
email           | string       | not null, indexed, unique
password_digest | string       | not null
session_token   | string       | not null, indexed, unique
name            | string       | not null



### for the bonus

## repeat_events (difference is date vs day of the week)
column name | data type   | details
------------|-------------|-----------------------
id          | integer     | not null, primary key
title       | string      | not null, unique
about       | string      | not null
description | text        | not null
date        | date        | not null
category    | string      | not null
day         | string      | not null
duration    | float       | not null
address     | integer     | not null
zip code    | string      | not null
email       | string      | not null
url         | text        | default (default image), not null
organizer_id| integer     | not null, foreign key (references users), indexed

## repeat_volunteerings (user=>repeat_event join_table)
column name        | data type   | details
-------------------|-------------|-----------------------
id                 | integer     | not null, primary key
user_id            | string      | not null, unique
single_event_id    | string      | not null
