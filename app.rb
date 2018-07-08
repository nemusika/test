require 'rexml/document'

doc = REXML::Document.new(open"english.xml")

#puts doc
#puts doc.elements['rss/channel/item/guid'].text

url = doc.elements['rss/channel/item/guid'].text
puts url

#puts "url : #{url}"

system("wget #{url}")