#!/usr/bin/env ruby
  require 'rubygems'
  require 'asin'
  require 'pp'
  

 i = 0
 while i < 19
          browsenode=browsenode+#{i}
          keyword=keyword+#{i}
        
          if h.has_key?(browsenode.capitalize)
                   list = search(:BrowseNode => h[browsenode.capitalize],  :SearchIndex => :Apparel, :Keywords => keyword, :ResponseGroup => :Large)
                   puts Searching for: BrowseNode: #{browsenode.capitalize},  keywords:#{keyword} 
   			 i += 1   
          end  
     end

# Blazers   
# Jackets  
# Hoodies   
# Jeans  
# Jumpsuits  
# Romper   
# Outerwear  
# Coats  
# Pants  
# Capris  
# Shorts  
# Skirts  
# Lounge  
# Socks  
# Bottoms  
# Dresses  
# Hosiery  
# Suits   
# Sweaters  
# Swim  
# Tops   
# Tees   
# Shoes
# Boots
# Bridal
# Costume
# Espadrilles
# Sneakers
# Flats
# Lace-Ups1
# Slip-Ons
# Loafers
# Mules
# Clogs
# Outdoor
# Pumps
# Sandals
# Slippers