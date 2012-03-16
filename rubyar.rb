require 'rubygems'
require 'active_record'
require 'yaml'
require 'logger'

dbconfig = YAML::load(File.open('database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)
#ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'a'))

class User < ActiveRecord::Base
end

puts "What is your name?"
print "> "
name = gets.chomp

# Create a User record from the name entered
User.create(name: name) unless name.blank?

puts "There are currently #{User.count} users in the database:"
puts User.pluck(:name).reject(&:blank?).join(', ')
