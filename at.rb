# require and include
  require 'rubygems'
  require 'asin'
  
  include ASIN
  
  ASIN::Configuration.configure do |config|
    config.secret = 'MDFS9VzmMO3TFbrBGOsRwUYq71+l5/ocSKVwz3Tt'
    config.key = 'AKIAI3Z2GRNRZLLG7L4A'
  end

 

include ASIN

# lookup an ASIN
#  item = lookup 'B00538JJJM'
 # ap item
#  ap item.raw
  
 # list = search :Keywords => 'Dress', :SearchIndex => :Apparel
  
  #puts list[0].image
  # puts list[0].raw.ItemAttributes.Brande.to_yaml
#    puts list[0].raw.ItemAttributes.Brand
 
#list.each { |x| puts "<<#{x.title}>> brand is: #{x.raw.ItemAttributes.Brand } (image #{x.image_url}\n" }

  ARGV.each do|a|
  puts "Argument: #{a}"
  

   end



