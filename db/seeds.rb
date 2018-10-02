require 'CSV'
require 'pry'
require_relative '../app/models/comedian'
require_relative '../app/models/special'
# require_relative './comedians.csv'


  def self.load(filepath)
    csv_object = CSV.foreach(filepath, headers: true, header_converters: :symbol)
      Comedian.create(name = comedian[:name], age = comedian[:age], city = comedian[:city])
      binding.pry 
  end

  self.load('db/comedians.csv')