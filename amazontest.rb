# require and include
  require 'rubygems'
  require 'asin'
  require 'ap'
  include ASIN
  
  ASIN::Configuration.configure do |config|
    config.secret = 'MDFS9VzmMO3TFbrBGOsRwUYq71+l5/ocSKVwz3Tt'
    config.key = 'AKIAI3Z2GRNRZLLG7L4A'
  end

  # lookup an ASIN
  item = lookup 'B00538JJJM'
#  ap item
  ap item.raw
  
  list = search :Keywords => 'Dress', :SearchIndex => :Apparel
  puts list[0].image
  
  

if __FILE__ == $0
  # TODO Generated stub
end