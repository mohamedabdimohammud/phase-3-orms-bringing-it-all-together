require 'bundler/setup'
Bundler.require

require_relative '../lib/dog'

DB = { conn: SQLite3::Database.new("db/dogs.db") }

require 'sqlite3'

DB = {:conn => SQLite3::Database.new("db/dogs.db")}
DB[:conn].results_as_hash = true

require_relative '../lib/dog.rb'
