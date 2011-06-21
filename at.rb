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
    puts "   ./at <browsernode> <brand> \"<keyword>, <keyword>\""
    exit
  end
  browsernode = ARGV[0]
  brand = ARGV[1]
  keywords = ARGV[2]
  list = search :BrowseNode => browsernode, :Brand => brand, :Keywords => keywords, :SearchIndex => :Apparel, :ResponseGroup => :Medium

  puts "Searching for: BrowseNode: #{browsernode} brand: #{brand}, keywords: #{keywords.inspect}"
  counter = 0
  list.each {
    |item|
      puts "Item: #{counter}, name: #{item.title}, price: #{item.raw.ItemAttributes.price}\nimage: #{item.image_url}"
      counter = counter + 1
      puts
  }
  
  




