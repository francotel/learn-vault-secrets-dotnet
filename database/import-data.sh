# wait for the SQL Server to come up
sleep 15s

# run the setup script to create the DB and the schema in the DB
/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P Orion123@ -d master -i setup.sql -No

# upload projects.csv data
/opt/mssql-tools18/bin/bcp Projects in /usr/src/app/projects.csv -Yo -S localhost -U sa -P Orion123@ -d HashiCorp -c -t ','
