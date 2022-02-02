CREATE TABLE "public"."tweet" ("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "content" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("content"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_tweet_updated_at"
BEFORE UPDATE ON "public"."tweet"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_tweet_updated_at" ON "public"."tweet" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
