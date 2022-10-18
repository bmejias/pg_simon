# pg_simon extension

EXTENSION = pg_simon
DATA = pg_simon--42.sql
PGFILEDESC = "pg_simon - A Simon Riggs tribute"

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
