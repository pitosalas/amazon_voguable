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


  def add_items department, count, browse_node
  	n_calls = count 
  	n_calls.times do 
  		get_batch_for_department department, browse_node
  	end	
  end
  
  def esc(str)
    str.sub( "'", %q{\\\'} ) unless str.nil?
  end

  
  def append_ruby_seed items, department
   	 items.each do |item|
     		@seed_file.puts("Item.create(")
     	  	@seed_file.puts("   :name => \'#{esc(item.title)}\',")
     	  	@seed_file.puts("   :img_url => \'#{esc(item.image_url)}\',")
       		@seed_file.puts("   :category => \'#{department}\',")
       		@seed_file.puts("   :department => \'#{department}\',")
	  				i_attrs = item.raw.ItemAttributes
          			features = i_attrs.Feature
      						features = [features] if features.class != Array
      		@seed_file.print ("   :features => \'")
      					features.each do|feature|
        						 @seed_file.print "#{esc(feature)}\n"
       					end unless i_attrs.Feature.nil?
      		@seed_file.puts("\',")
      					listprice = i_attrs.ListPrice
      		@seed_file.puts("   :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
      		@seed_file.puts("   :brand => \'#{esc(i_attrs.Brand)}\',")
      		@seed_file.puts("   :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
      		@seed_file.puts("   :fabric_type => \'#{esc(i_attrs.FabricType)}\'")
      		@seed_file.puts(")")
      end
  end
  
  
  def initialize_ruby_seed
  	 @seed_file = File.new("items.rb", "a")
  end
  
  
  def get_batch_for_department department, browse_node
    puts "Searching for: BrowseNode: #{browse_node}, Department: #{department}"
    item_list = search(:BrowseNode => browse_node,  :SearchIndex => :Apparel, :Keywords => department, :ResponseGroup => :Large)
    append_ruby_seed item_list, department
  end
  
  
initialize_ruby_seed

#add_items "Accessories", 10, 2474936011
#add_items "Pants", 10, 1048184
#add_items "Skirts", 10, 1045022

add_items "Active", 10, 1045112
add_items "Jackets", 10, 1045112
add_items "Blazers", 10, 1045112
add_items "Dresses", 10, 1045024
add_items "Hoodies", 10, 1258603011
add_items "Intimates", 10, 14333511
add_items "Jumpsuits", 10, 2381887011
add_items "Shoes", 10, 672124011
add_items "Rompers", 10, 2381887011
add_items "Suits", 10, 1044460
add_items "Tops", 10, 2368343011
add_items "Shorts", 10, 1048186
add_items "Tees", 10, 2368343011
add_items "Jeans", 10, 1048188
add_items "Leggings", 10, 1258967011
add_items "Hosiery", 10, 1044886


 
# add_items "Anklets", 10, 3885271
# add_items "Mules", 10, 679410011
# add_items "Bridal", 10, 679386011

# add_items "Brooches & Pins", 10, 3885491
# add_items "Body Jewelry", 10, 3885201
# add_items "Espadrilles", 10, 679391011
# add_items "Boat Shoes", 10, 679379011
# add_items "Novelty Jewelry", 10, 2516784011
# add_items "Necklaces & Pendants", 10, 3886281
# add_items "Slippers", 10, 679433011
# add_items "Pumps", 10, 679416011
# add_items "Athletic", 10, 679338011
# add_items "Rings", 10, 3887251
# add_items "Earrings", 10, 3885911
# add_items "Footwear", 10, 679438011
# add_items "Lace-Ups", 10, 679415011
# add_items "Skirts", 10, 1045022
# add_items "Boots", 10, 679380011
# add_items "Sleep", 10, 2376202011
# add_items "Sandals", 10, 679425011
# add_items "Flats", 10, 679399011
# add_items "Socks", 10, 1044886
# add_items "Outerwear", 10, 1044646
# add_items "Sneakers", 10, 679394011
# add_items "Sweaters", 10, 1044456
# add_items "Charms", 10, 3885701
# add_items "Outdoor", 10, 2368252011
# add_items "Jewelry Sets", 10, 3898891
# add_items "Clogs", 10, 679410011
# add_items "Slip-Ons", 10, 679404011
# add_items "Costume", 10, 684422011
# add_items "Coats", 10, 1044646
# add_items "Wedding & Engagement Rings", 10, 16014541
# add_items "Children's Jewelry", 10, 3880601
# add_items "Bracelets & Bangles", 10, 3885251
# add_items "Sports]", 10, 679438011
# add_items "Loafers", 10, 679404011
# add_items "Swim", 10, 1046622
# add_items "Lounge", 10, 2376202011
# add_items "Capris", 10, 1048184
