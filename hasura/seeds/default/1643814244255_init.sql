SET check_function_bodies = false;
INSERT INTO public.app_user (id, created_at, updated_at, username) VALUES ('ccc27691-4e25-466a-bb2c-90f616fe404c', '2022-02-02 14:52:31.206617+00', '2022-02-02 14:52:31.206617+00', 'dude');
INSERT INTO public.tweet (id, created_at, updated_at, user_id, content) VALUES (2, '2022-02-02 14:52:46.539288+00', '2022-02-02 14:52:46.539288+00', 'ccc27691-4e25-466a-bb2c-90f616fe404c', 'Hello World');
SELECT pg_catalog.setval('public.user_tweet_id_seq', 2, true);
