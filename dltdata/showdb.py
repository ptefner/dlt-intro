import duckdb

con = duckdb.connect("standard_filesystem.duckdb")
#con = duckdb.connect("./my_database.duckdb")
print(con.execute("SHOW TABLES").fetchall())
print(con.execute("SELECT * FROM raw_data LIMIT 5").fetchdf())