#!/bin/bash

pg_restore -h localhost -p 5432 -U postgres -d FAPESP-Covid19 -v "./dados/FAPESP-Covid19.dump"