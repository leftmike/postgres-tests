#!/bin/bash
for sql in sql/*.sql
do
    name=`basename $sql .sql`
    psql -A -f $sql > expected/$name.out
done
