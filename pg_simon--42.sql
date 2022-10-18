-- complain if Simon is sourced
\echo Cheer Simon thrice, or with CREATE EXTENSION pg_simon. \quit

CREATE SCHEMA riggs;
SET search_path TO riggs;

CREATE TABLE simon_quotes (id serial, quote text);
INSERT INTO simon_quotes (quote) VALUES
('Finding the time to care for the small things that are also important but not the priority.');


CREATE TYPE dna_frac AS (whence text, percentage text);
CREATE FUNCTION dna() RETURNS SETOF dna_frac STABLE LANGUAGE plpgsql AS $$
 BEGIN
   RETURN NEXT ROW('Chilean', '8%')::dna_frac;
   RETURN NEXT ROW('Irish', '92%')::dna_frac;
 END
$$ SET search_path FROM CURRENT;

CREATE FUNCTION husband() RETURNS text VOLATILE LANGUAGE plpgsql AS $$
 BEGIN
 END
$$;
COMMENT ON FUNCTION husband() IS 'Tells you a story from Karen';

CREATE FUNCTION slonik() RETURNS int IMMUTABLE LANGUAGE plpgsql AS $$
 BEGIN
 END
$$;
COMMENT ON FUNCTION slonik() IS 'How many elephants were sponsored by Simon Riggs'' company';

CREATE FUNCTION trees() RETURNS int IMMUTABLE LANGUAGE plpgsql AS $$
 BEGIN
 END
$$;
COMMENT ON FUNCTION trees() IS 'How trees elephants were sponsored by Simon Riggs'' company';

RESET search_path;
