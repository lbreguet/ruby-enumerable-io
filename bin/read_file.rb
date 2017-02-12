# frozen_string_literal: true
#

raise 'Usage: ruby bin/read_file.rb <input_file>' if ARGV.empty?
infile = ARGV[0]

File.open(infile) do |file|
  file.each_with_index do |line, i|
    p "#{i + 1}: #{line}"
  end
end
