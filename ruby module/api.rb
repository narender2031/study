# require 'uri'
# require 'net/http'

# url = URI("https://google.com")

# http = Net::HTTP::new(url.host, url.port)
# request = Net::HTTP::Post.new(url)
# request["accept"] = 'application/json'
# request["authorizatiom"] = "token"
# resposnse = http.request(request)

# require 'uri'
# require 'net/http'

# url = URI('https://wwww.google.com')
# http = Net::HTTP.new(url.host, url.port)
# request = Net::HTTP::Post.new(url)
# request['accpet'] = "application/json"
# request['authorization'] = "token"

# response = http.request(request)
# puts response.body