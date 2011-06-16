require 'rubygems'
require 'asin'

require 'ap'

ASIN::Configuration.configure do |config|
  config.key = 'AKIAI3Z2GRNRZLLG7L4A'
  config.secret = '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'
  config.logger = nil
end

#client = ASIN.client
#item = client.lookup '020161622X'

# pp item.raw.ItemAttributes
include ASIN
#list = search_keywords("shoes", :SearchIndex => :Apparel)
#list = search(:SearchIndex => :Apparel, :Keywords => "Shoes", :ResponseGroup => :Images)
#list = search(:SearchIndex => :Apparel, :Brand => "Macys", :ResponseGroup => :ItemIds)
list = search_keywords("shoes", {:SearchIndex => :Apparel, :ResponseGroup => :Medium })
#list = search(:SearchIndex => :Apparel, :Keywords => "Shoes", :ResponseGroup => :Medium)


list.each { |x| puts x.title, x.image_url }

