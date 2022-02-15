pg_dump -d postgres -h localhost -p 5432 -U postgres -W -f pg-postgres.sql
pg_dump -d strapi -h localhost -p 5432 -U postgres -W -f pg-strapi.sql