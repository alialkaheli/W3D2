require 'sqlite3'
require 'singleton'


class QuestionsDBConnection < SQLite3::Database
  include Singleton


  SQL_FILE = File.join(File.dirname(__FILE__), 'import_db.sql')
  DB_FILE = File.join(File.dirname(__FILE__), 'questions.db')

  def initialize
    super('questions.db')
    self.type_translation = true
    self.results_as_hash = true
  end


end
