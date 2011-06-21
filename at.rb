#!/usr/bin/env ruby
  require 'rubygems'
  require 'asin'
  
  include ASIN
  
  ASIN::Configuration.configure do |config|
    config.secret = 'MDFS9VzmMO3TFbrBGOsRwUYq71+l5/ocSKVwz3Tt'
    config.key = 'AKIAI3Z2GRNRZLLG7L4A'
    config.logger = nil
  end

  include ASIN
  if ARGV.length == 0
    puts "Run from command line as follows:"
    puts "   ./at <brand>, <keyword>, <keyword> ..."
    exit
  end
  brand = ARGV[0]
  keywords = ARGV[1, ARGV.length+1]
  puts keywords, keywords.class
  puts brand, brand.class
  list = search :Brand => brand, :Keywords => keywords, :SearchIndex => :Apparel, :ResponseGroup => :Medium

  counter = 0
  list.each {
    |item|
      puts "Item: #{counter}, name: #{item.title}"
      counter = counter + 1
      puts
  }
  
  




