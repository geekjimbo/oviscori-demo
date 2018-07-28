require 'optparse'
require 'csv'
require 'json' 
require './Ubicaciones.rb'

options = {}
OptionParser.new do |opt|
  opt.on("--idx IDX") { |o| options[:idx] = o }
  opt.on("--batch BATCH") { |o| options[:batch] = o }
end.parse!

puts options

ub = Ubicaciones.new
ub.fetch options[:idx], options[:batch]
puts "completed!"