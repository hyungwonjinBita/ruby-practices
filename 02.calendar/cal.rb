require 'optparse'
require 'date'

options = ARGV.getopts('m:', 'y:')
month = options["m"].to_i
year = options["y"].to_i

year = Date.today.year if year == 0

startDateFull = Date.new(year, month, 1)
lastDateFull = Date.new(year, month, -1)

puts "       #{month}月 #{year}"
puts '日 月 火 水 木 金 土'

print "   " * startDateFull.wday
(startDateFull..lastDateFull).each do |date|
  print date.strftime('%e ')
  puts if date.saturday?
end