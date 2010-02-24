require 'pp'
require 'pathname'
$LOAD_PATH.insert(0, Pathname.new(__FILE__).realpath.parent.parent + 'lib')
require 'can_has_upc/hooks'

puts "String UPC:"
pp "015000127022".to_upc 

puts "\nNumeric UPC:"
pp 15000127022.to_upc 

