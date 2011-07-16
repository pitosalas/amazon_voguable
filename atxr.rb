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
    puts " ./at.rb <Browsenode1> <keyword1> \"<Browsenode2> <keyword2>, <Browsenode3><keyword3>,..........,<BrowsenodeN><keywordN>\""
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
  h["Active"]=3456051
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

 
  #ease data population
  
  browsenode1 = ARGV[0]
  keywords1 = ARGV[1]
  
  browsenode2 = ARGV[2]
  keywords2 = ARGV[3]
  
  browsenode3 = ARGV[4]
  keywords3 = ARGV[5]
  
   browsenode4 = ARGV[6]
  keywords4 = ARGV[7]
  
   browsenode5 = ARGV[8]
  keywords5 = ARGV[9]
  
 #   browsenode6 = ARGV[10]
#   keywords6 = ARGV[11]
# 
#  browsenode7 = ARGV[12]
#   keywords7 = ARGV[13]
#   
#    browsenode8 = ARGV[14]
#   keywords8 = ARGV[15]
#   
#   browsenode9 = ARGV[16]
#   keywords9 = ARGV[17]
#  
#   browsenode10 = ARGV[18]
#   keywords10 = ARGV[19]
#   
#   browsenode11 = ARGV[20]
#   keywords11 = ARGV[21]
#   
#   browsenode12 = ARGV[22]
#   keywords12 = ARGV[23]
#   
#    browsenode13 = ARGV[24]
#   keywords13 = ARGV[25]
#   
#    browsenode14 = ARGV[26]
#   keywords14 = ARGV[27]
#   
#    browsenode15 = ARGV[28]
#   keywords15 = ARGV[29]
# 
#  browsenode16 = ARGV[30]
#   keywords16 = ARGV[31]
#   
#    browsenode17 = ARGV[32]
#   keywords17 = ARGV[33]
#   
#   browsenode18 = ARGV[34]
#   keywords18 = ARGV[35]
# 
# i = 0
#  while i < 5
#           browsenode="browsenode"+"#{i}"
#           keywords="keywords"+"#{i}"
        
          if h.has_key?(browsenode1.capitalize)
                   list1 = search(:BrowseNode => h[browsenode1.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords1, :ResponseGroup => :Large)
                  puts "Searching for: BrowseNode: #{browsenode1.capitalize},  keywords:#{keywords1} "
     end
puts "Outputting #{list1.length} items"

 def esc(str)
    str.sub( "'", %q{\\\'} ) unless str.nil?
  end

 
# # #============
 if h.has_key?(browsenode2.capitalize)
  list2 = search(:BrowseNode => h[browsenode2.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords2, :ResponseGroup => :Large)
    puts "Searching for: BrowseNode: #{browsenode2.capitalize},  keywords: #{keywords2}"
  
   end
   puts "Outputting #{list2.length} items"
       
  #============  
   
    if h.has_key?(browsenode5.capitalize)
  list5 = search
    puts "Searching for: BrowseNode: #{browsenode5.capitalize},  keywords: #{keywords5}"
  
  end
puts "Outputting #{list5.length} items"
 
 
#============
 if h.has_key?(browsenode3.capitalize)
  list3 = search(:BrowseNode => h[browsenode3.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords3, :ResponseGroup => :Large)
    puts "Searching for: BrowseNode: #{browsenode3.capitalize},  keywords: #{keywords3}"
  
   end
   puts "Outputting #{list3.length} items"
    
     
     
 #============  
  if h.has_key?(browsenode4.capitalize)
  list4 = search(:BrowseNode => h[browsenode4.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords4, :ResponseGroup => :Large)
    puts "Searching for: BrowseNode: #{browsenode4.capitalize},  keywords: #{keywords4}"
  
  end
puts "Outputting #{list4.length} items"
#============

if h.has_key?(browsenode5.capitalize)
  list5 = search(:BrowseNode => h[browsenode5.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords5, :ResponseGroup => :Large)
    puts "Searching for: BrowseNode: #{browsenode5.capitalize},  keywords: #{keywords5}"
  
  end
puts "Outputting #{list5.length} items"
	 
	 file = File.new("items.rb", "a")
 	
 	 list1.each do |item|
     		file.puts ("Item.create(")
    	 	file.puts (" : description=> '\',")
     	  	file.puts (" :name => \'#{esc(item.title)}\',")
     	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
       		file.puts (" :category => \'#{browsenode1}\',")
	  				i_attrs = item.raw.ItemAttributes
          			features = i_attrs.Feature
      						features = [features] if features.class != Array
      		file.print (" :features => \'")
      					features.each do|feature|
        						 file.print "#{esc(feature)}\n"
       					end unless i_attrs.Feature.nil?
      		file.puts ("\',")
      					listprice = i_attrs.ListPrice
      		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
      		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
      		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
      		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
      		file.puts (")")
      end
      
       if list3.length>0
       list3.each do |item|
     		file.puts ("Item.create(")
    	 	file.puts (" : description=> '\',")
     	  	file.puts (" :name => \'#{esc(item.title)}\',")
     	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
       		file.puts (" :category => \'#{browsenode1}\',")
	  				i_attrs = item.raw.ItemAttributes
          			features = i_attrs.Feature
      						features = [features] if features.class != Array
      		file.print (" :features => \'")
      					features.each do|feature|
        						 file.print "#{esc(feature)}\n"
       					end unless i_attrs.Feature.nil?
      		file.puts ("\',")
      					listprice = i_attrs.ListPrice
      		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
      		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
      		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
      		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
      		file.puts (")")
      end
      end
  if list2.length>0    
 list2.each do |item|
     		file.puts ("Item.create(")
    	 	file.puts (" : description=> '\',")
     	  	file.puts (" :name => \'#{esc(item.title)}\',")
     	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
       		file.puts (" :category => \'#{browsenode1}\',")
	  				i_attrs = item.raw.ItemAttributes
          			features = i_attrs.Feature
      						features = [features] if features.class != Array
      		file.print (" :features => \'")
      					features.each do|feature|
        						 file.print "#{esc(feature)}\n"
       					end unless i_attrs.Feature.nil?
      		file.puts ("\',")
      					listprice = i_attrs.ListPrice
      		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
      		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
      		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
      		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
      		file.puts (")")
      end
      end
 if list4.length>0
       list4.each do |item|
     		file.puts ("Item.create(")
    	 	file.puts (" : description=> '\',")
     	  	file.puts (" :name => \'#{esc(item.title)}\',")
     	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
       		file.puts (" :category => \'#{browsenode1}\',")
	  				i_attrs = item.raw.ItemAttributes
          			features = i_attrs.Feature
      						features = [features] if features.class != Array
      		file.print (" :features => \'")
      					features.each do|feature|
        						 file.print "#{esc(feature)}\n"
       					end unless i_attrs.Feature.nil?
      		file.puts ("\',")
      					listprice = i_attrs.ListPrice
      		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
      		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
      		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
      		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
      		file.puts (")")
      end
      end

                if list5.length>0
       list5.each do |item|
     		file.puts ("Item.create(")
    	 	file.puts (" : description=> '\',")
     	  	file.puts (" :name => \'#{esc(item.title)}\',")
     	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
       		file.puts (" :category => \'#{browsenode1}\',")
	  				i_attrs = item.raw.ItemAttributes
          			features = i_attrs.Feature
      						features = [features] if features.class != Array
      		file.print (" :features => \'")
      					features.each do|feature|
        						 file.print "#{esc(feature)}\n"
       					end unless i_attrs.Feature.nil?
      		file.puts ("\',")
      					listprice = i_attrs.ListPrice
      		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
      		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
      		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
      		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
      		file.puts (")")
      end
      end



#============

#  if h.has_key?(browsenode6.capitalize)
#   list6 = search(:BrowseNode => h[browsenode6.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords6, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode6.capitalize},  keywords: #{keywords6}"
#   
#    end
#    puts "Outputting #{list6.length} items"
#  #============  
#  
#   if h.has_key?(browsenode7.capitalize)
#   list7 = search(:BrowseNode => h[browsenode7.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords7, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode7.capitalize},  keywords: #{keywords7}"
#   
#   end
# puts "Outputting #{list7.length} items"
# #============
#  if h.has_key?(browsenode8.capitalize)
#   list8 = search(:BrowseNode => h[browsenode8.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords8, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode8.capitalize},  keywords: #{keywords8}"
#   
#    end
#    puts "Outputting #{list8.length} items"
# #  #============  
# 
#  if h.has_key?(browsenode9.capitalize)
#   list9 = search(:BrowseNode => h[browsenode9.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords9, :ResponseGroup => :Large)
#    puts "Searching for: BrowseNode: #{browsenode9.capitalize},  keywords: #{keywords9}"
#   
#    end
#    puts "Outputting #{list9.length} items"   
#    
#    if h.has_key?(browsenode10.capitalize)
#   list10 = search(:BrowseNode => h[browsenode10.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords10, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode10.capitalize},  keywords: #{keywords10}"
#   
#   end
# puts "Outputting #{list10.length} items"
#    # # #============
#  if h.has_key?(browsenode11.capitalize)
#   list11 = search(:BrowseNode => h[browsenode11.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords11, :ResponseGroup => :Large)
#    puts "Searching for: BrowseNode: #{browsenode11.capitalize},  keywords: #{keywords11}"
#   
#    end
#    puts "Outputting #{list11.length} items"
#  #============  
#    
#     # # #============
#  if h.has_key?(browsenode12.capitalize)
#   list12 = search(:BrowseNode => h[browsenode12.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords12, :ResponseGroup => :Large)
#    # puts "Searching for: BrowseNode: #{browsenode10.capitalize},  keywords: #{keywords10}"
#   
#    end
#    puts "Outputting #{list12.length} items"
#  #============  
# 
#  if h.has_key?(browsenode13.capitalize)
#   list13 = search(:BrowseNode => h[browsenode13.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords13, :ResponseGroup => :Large)
#    puts "Searching for: BrowseNode: #{browsenode13.capitalize},  keywords: #{keywords13}"
#   
#    end
#    puts "Outputting #{list13.length} items"
#  #============  
#   if h.has_key?(browsenode14.capitalize)
#   list14 = search(:BrowseNode => h[browsenode14.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords14, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode4.capitalize},  keywords: #{keywords4}"
#   
#   end
# puts "Outputting #{list14.length} items"
# #============
#  if h.has_key?(browsenode15.capitalize)
#   list15 = search(:BrowseNode => h[browsenode15.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords15, :ResponseGroup => :Large)
#    puts "Searching for: BrowseNode: #{browsenode15.capitalize},  keywords: #{keywords15}"
#   
#   end
# puts "Outputting #{list15.length} items"
# 
# #======
#  if h.has_key?(browsenode16.capitalize)
#   list16 = search(:BrowseNode => h[browsenode16.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords16, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode16.capitalize},  keywords: #{keywords16}"
#   
#    end
#    puts "Outputting #{list16.length} items"
#  #============  
#  
#   if h.has_key?(browsenode17.capitalize)
#   list17 = search(:BrowseNode => h[browsenode17.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords17, :ResponseGroup => :Large)
#     puts "Searching for: BrowseNode: #{browsenode17.capitalize},  keywords: #{keywords17}"
#   
#   end
# puts "Outputting #{list17.length} items"
# #============
#  #  if h.has_key?(browsenode18.capitalize)
# #   list18 = search(:BrowseNode => h[browsenode17.capitalize],  :SearchIndex => :Apparel, :Keywords => keywords18, :ResponseGroup => :Large)
# #   #  puts "Searching for: BrowseNode: #{browsenode7.capitalize},  keywords: #{keywords7}"
# #   
# #   end
# # puts "Outputting #{list18.length} items"
# 
#  # if list1.length>0   
# #    biglist=list1
# #     end
# #    if list2.length>0
# #     biglist|list2  end
# #     if list3.length>0
# #         biglist|list3  end
# #     if list4.length>0
# #         biglist|list4 end
# #      if list5.length>0   
# #         biglist|list5 end
# #     if list6.length>0
# #         biglist|list6 end
# #      if list7.length>0  
# #         biglist|list7 end
# #     if list8.length>0
# #         biglist|list8 end
# #      if list9.length>0  
# #         biglist|list9 end
# #     if list10.length>0
# #         biglist|list10 end
# #      if list11.length>0  
# #         biglist|list11 end
# #     if list12.length>0
# #         biglist|list12 end
# #      if list13.length>0   
# #         biglist|list13 end
# #      if list14.length>0 
# #         biglist|list14 end
# #     if list15.length>0
# #         biglist|list15 end
# #      if list16.length>0   
# #       biglist|list16 end
# #      if list17.length>0   
# #       biglist|list17  end
# #        
#  
#        if list6.length>0
#        list6.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#        if list7.length>0
#        list7.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       unless list8.nil?
#        list8.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list9.length>0
#  list9.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list10.length>0
#        list10.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list11.length>0
#        list11.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list12.length>0
#        list12.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list13.length>0
#        list13.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list14.length>0
#        list14.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list15.length>0
#        list15.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list16.length>0
#        list16.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list17.length>0
#        list17.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list18.length>0
#   list18.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#       end
#       if list19.length>0
#        list19.each do |item|
#      		file.puts ("Item.create(")
#     	 	file.puts (" : description=> '\',")
#      	  	file.puts (" :name => \'#{esc(item.title)}\',")
#      	  	file.puts (" :img_url => \'#{esc(item.image_url)}\',")
#        		file.puts (" :category => \'#{browsenode1}\',")
# 	  				i_attrs = item.raw.ItemAttributes
#           			features = i_attrs.Feature
#       						features = [features] if features.class != Array
#       		file.print (" :features => \'")
#       					features.each do|feature|
#         						 file.print "#{esc(feature)}\n"
#        					end unless i_attrs.Feature.nil?
#       		file.puts ("\',")
#       					listprice = i_attrs.ListPrice
#       		file.puts (" :item_price => \'#{listprice.FormattedPrice}\',") unless listprice.nil?
#       		file.puts (" :brand => \'#{esc(i_attrs.Brand)}\',")
#       		file.puts (" :link_to_buy=> \'#{esc(item.raw.DetailPageURL)}\',")
#       		file.puts (" :fabric => \'#{esc(i_attrs.FabricType)}\'")
#       		file.puts (")")
#       end
#  end 