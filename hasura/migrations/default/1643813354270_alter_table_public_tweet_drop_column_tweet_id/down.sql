alter table "public"."tweet" alter column "tweet_id" drop not null;
alter table "public"."tweet" add column "tweet_id" uuid;
