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
 def check_input
  if ARGV.length == 0
    puts "Run from command line as follows:"
    puts "   ./at.rb <Browsenode> <brand> \"<keyword>, <keyword>,..........,<keyword>\""
    exit
  end
 end
  #==========================
  #women apparel
  h=Hash.new()
  h["Dresses"]= 1045024 
  h["Shoes"]= 672124011
  h["Shorts"]=468556
  h["Intimates"]=14333511
  
  h["Accessories"]=2474936011
  h["Active3456051"]=
  h["Blazers"]=1045112
  h["Jackets"]=1045112
  h["Dresses"]=1045024
  h["Hoodies"]=1258603011
  h["Intimates"]=14333511
  h["Jeans"]=1048188
  h["Jumpsuits"]=2381887011
  h["Rompers"]=2381887011
  h["Leggings"]=1258967011
  h["Maternity"]=1285228011
  h["Outerwear"]=1044646
  h["Coats"]=1044646
  h["Pants"]=1048184
  h["Capris"]=1048184
  h["Shorts"]=1048186
  h["Skirts"]=1045022
  h["Sleep"]=2376202011
  h["Lounge"]=2376202011
  h["Socks"]=1044886
  h["Hosiery"]=1044886
  h["Suits"]=1044460
  h["Sweaters"]=1044456
  h["Swim"]=1046622
  h["Tops"]=2368343011
  h["Tees"]=2368343011
 #women shoes 
  h["Athletic"]=679338011
h["Boat Shoes"]=679379011
h["Boots"]=679380011
h["Bridal"]=679386011
h["Costume"]=684422011
h["Espadrilles"]=679391011
h["Sneakers"]=679394011
h["Flats"]=679399011
h["Lace-Ups"]=679415011
h["Slip-Ons"]=679404011
h["Loafers"]=679404011
h["Mules"]=679410011
h["Clogs"]=679410011
h["Outdoor"]=2368252011
h["Pumps"]=679416011
h["Sandals"]=679425011
h["Slippers"]=679433011
h["Sports]"]=679438011
h["Footwear"]=679438011
h["Work & Safety"]=679442011
#jewelery
h["Accessories"]=3888431
h["Anklets"]=3885271
h["Body Jewelry"]=3885201
h["Bracelets & Bangles"]=3885251
h["Brooches & Pins"]=3885491
h["Charms"]=3885701
h["Children's Jewelry"]=3880601
h["Earrings"]=3885911
h["Jewelry Sets"]=3898891
h["Loose Gemstones"]=370742011
h["Men's Jewelry"]=3887881
h["Necklaces & Pendants"]=3886281
h["Novelty Jewelry"]=2516784011
h["Religious Jewelry"]=3893691
h["Rings"]=3887251
h["Wedding & Engagement Rings"]=16014541





  
  check_input
  
  browsenode = ARGV[0]
  puts h[browsenode.capitalize]
  brand = ARGV[1]
  keywords = ARGV[2]

	if h.has_key?(browsenode.capitalize)	
	list = search(:BrowseNode => h[browsenode.capitalize], :SearchIndex => :Apparel, :Keywords => keywords, :ResponseGroup => :Medium)
  	puts "Searching for: BrowseNode: #{browsenode.capitalize}, brand: #{brand}, keywords: #{keywords}"
  
   
   else
   puts "Ooops! Please check your browse node and try again.."
   check_input
  end


  
  
  counter = 1
  list.each {
   |item|
       puts "Item: #{counter}, name: #{item.title}, price: #{item.raw.ItemAttributes.price}\nimage: #{item.image_url}"
      counter = counter + 1
      puts "-----"
  }
  
  




