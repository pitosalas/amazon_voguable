#!/usr/bin/env ruby
  require 'rubygems'
  require 'asin'
  require 'pp'
  
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
#  puts h[browsenode.capitalize]
  brand = ARGV[1]
  keywords = ARGV[2]

  if h.has_key?(browsenode.capitalize)  
  list = search(:BrowseNode => h[browsenode.capitalize], :Brand => brand, :SearchIndex => :Apparel, :Keywords => keywords, :ResponseGroup => :Large)
    puts "Searching for: BrowseNode: #{browsenode.capitalize}, brand: #{brand}, keywords: #{keywords}"
  
   
   else
   puts "Ooops! Please check your browse node and try again.."
   check_input
  end
#  pp list[0]


  
# puts list[0].raw.ItemAttributes.Feature
#  puts list[0].raw.ItemAttributes.Title
#  puts list[0].raw.ItemAttributes.FabricType
pp list[0].raw.ItemAttributes.ListPrice.Amount
 
   counter = 1
   puts "Outputting #{list.length} items"
   list.each {
   |item|
      puts "Asin: #{item.asin} Item: #{counter}, name: #{item.title}, price: #{item.raw.ItemAttributes.price}\nimage: #{item.image_url}"
      attribs = item.raw.ItemAttributes
      tagfake = attribs.Feature + [attribs.Title] + [attribs.FabricType]
      puts ">>> Brand: #{attribs.Brand}"
      counter = counter + 1
      puts "-----"
  } unless true # list.nil
  
# Create or append to the output file
  if false 
    file = File.new("items.xml", "a")
    list.each do |item|
      file.puts "<item>"
      file.puts "   <asin>#{item.asin}</asin>"
      file.puts "   <title>#{item.title}</title>"
      file.puts "   <price>#{item.raw.ItemAttributes.Price}</price>"
      file.puts "   <image_url>#{item.image_url}</image_url>"

      i_attrs = item.raw.ItemAttributes
      file.puts "   <brand>#{i_attrs.Brand}</brand>"
      file.puts "   <feature_list>"
      features = i_attrs.Feature
      features = [features] if features.class != Array
      features.each do
         |feature|
         file.puts "       <feature>#{feature}</feature>"
       end unless i_attrs.Feature.nil?
      file.puts "   </feature_list>"
      file.puts "   <fabric_type>#{i_attrs.FabricType}</fabric_type>"
      file.puts "</item>"
    end unless list.nil?
    file.close
end

  def esc(str)
    str.sub( "'", %q{\\\'} ) unless str.nil?
  end

  file = File.new("items.rb", "a")
  list.each do |item|
      file.puts ("Item.create(")
      file.puts ("  :asin => \'#{item.asin}\'")
      file.puts ("  :name => \'#{esc(item.title)}\'")
      file.puts ("  :image_url => \'#{esc(item.image_url)}\'")
      
      i_attrs = item.raw.ItemAttributes
      features = i_attrs.Feature
      features = [features] if features.class != Array
      file.print ("   :features => \'")
      features.each do
         |feature|
         file.print "#{esc(feature)}###"
       end unless i_attrs.Feature.nil?
      file.puts ("\'")
      listprice = i_attrs.ListPrice
      file.puts ("  :price => \'#{listprice.FormattedPrice}\'") unless listprice.nil?
      file.puts ("  :brand => \'#{esc(i_attrs.Brand)}\'")
      file.puts ("  :fabric_type => \'#{esc(i_attrs.FabricType)}\'")
      file.puts (")")
  end

