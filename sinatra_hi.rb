# require "sinatra"
# get "/" do
#   ["カフェラテ", "モカ", "コーヒー"].sample
# end 

# require "net/http"
# require "uri"
# uri = URI.parse("https://example.com/")
# puts Net::HTTP.get(uri)


# require "net/http"
# require "uri"
# require "json"
# uri = URI.parse("https://igarashikuniaki.net/example.json")
# result = Net::HTTP.get(uri)
# hash = JSON.parse(result)
# p hash
# p hash["caffe latte"]

require "json"
p({mocha: 400}.to_json)
