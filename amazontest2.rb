#!/usr/bin/env ruby
puts RUBY_VERSION
require 'rubygems'
require 'asin'


# Command line utility va.rb
#
# va "keyword", "keyword", "keyword"
# e.g.
# va shoes, macys, jcrew
# would produce info for 10 products in the amazon catalog as follows
# <productname1>, <price1>, <url_to_iamge1>
# <productname2>, <price1>, <url_to_iamge1>
# <productname3>, <price1>, <url_to_iamge1>
# <productname4>, <price1>, <url_to_iamge1>
# <productname5>, <price1>, <url_to_iamge1>
# etc.


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
#list = search_keywords("red", "formal", {:SearchIndex => :Apparel, :ResponseGroup => :Medium })
list = search(:BrowseNode => "1045024", :SearchIndex => :Apparel, :Keywords => "red", :ResponseGroup => :Medium)
#puts list[0].raw.to_yaml"
puts
# puts list[0].raw.ItemAttributes.Feature.to_yaml
#puts list[0].raw.ItemAttributes.Brand

list.each { |x| puts "<<#{x.title}>> brand is: #{x.raw.ItemAttributes.Brand } (image #{x.image_url}\n" }

