# frozen_string_literal: true

require 'optparse'

options = ARGV.getopts('a', 'r', 'l')

def make_file_list
  file_list = []
  Dir.foreach('.') do |item|
    next if ['.', '..'].include?(item)

    file_list << item
  end
  file_list
end

def print_file_list(file_list)
  column = 3
  column_length = (file_list.length / column.to_f).ceil

  (0..column_length - 1).each do |i|
    (0..column).each do |j|
      print file_list[i + j * column_length].to_s.ljust(20) unless file_list[i + j * column_length].nil?
    end
    puts
  end
end

if !options['a'] && !options['r'] && !options['l']
  file_list = make_file_list
  print_file_list(file_list)
end
