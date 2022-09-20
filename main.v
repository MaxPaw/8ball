module main

import os
import json
import pg

fn main() {
	database_config_file := os.read_file('config/database.json') or { panic('Can not read db config') }
	println(database_config_file)
	pg_config := json.decode(pg.Config, database_config_file) or { panic('Can not decode db config')}
	println(pg_config)
}
