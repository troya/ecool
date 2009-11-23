require 'rubygems'
require 'net/http'
require 'json'

module YahooApiHelper
  def searchNews(query_str)
    url = "http://boss.yahooapis.com/ysearch/news/v1/#{URI.encode(query_str)}?appid=rTVjc5nV34FpfvB6WhdkGWROJG4kmHx0tu1ORhFL7XkZLFMlicx7lY0CdIY5yiqRQg--&format=json"
    begin
      data = Net::HTTP.get_response(URI.parse(url)).body
    rescue
      print "Connection error."
    end
    print data
    result = JSON.parse(data)
    if result.has_key? 'Error'
      raise "web service error"
   end
   return result
  end
end
