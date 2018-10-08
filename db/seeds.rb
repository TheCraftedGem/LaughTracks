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
require File.expand_path('../../config/environment.rb', __FILE__)


dave = Comedian.create!(name: "Dave Chappelle", age: 54, city: "woof")
half_baked_special = dave.specials.create!(name: "Half Baked", runtime: 45)
