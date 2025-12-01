Login as postgres user 
sudo -u postgres psql

Connect with host + port
psql -h localhost -p 5432 -U postgres -d dbname

List all PostgreSQL users
\du



Show all databases
list
\l

Switch to a database
\c databasename


Show all tables
\dt

Describe a table (show columns)
\d tablename

Select rows from a table
SELECT * FROM tablename;


Create a new database
CREATE DATABASE dbname;

Create a new user
CREATE USER username WITH PASSWORD 'password';

Grant permissions
GRANT ALL PRIVILEGES ON DATABASE dbname TO username;

Exit PostgreSQL
\q


