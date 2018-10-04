# require 'CSV'
# require 'pry'
# require_relative '../app/models/comedian'
# require_relative '../app/models/special'
# # require_relative './comedians.csv'


#   def self.load(filepath)
#     csv_object = CSV.foreach(filepath, headers: true, header_converters: :symbol)
#       Comedian.create(name = comedian[:name], age = comedian[:age], city = comedian[:city])
#       binding.pry 
#   end

#   self.load('db/comedians.csv')
# require File.expand_path('../../config/environment.rb', __FILE__)


require 'postgresql'



database = SQLite3::Database.new("db/task_manager_development.db")
database.execute("CREATE TABLE tasks (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                      title VARCHAR(64),
                                      description VARCHAR(64)
                                     );"
                )
puts "creating tasks table for development"