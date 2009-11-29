require 'rubygems'
require 'net/http'
require 'json'

module YahooApiHelper
  include FileCacheHelper
  
  RESULTS_CACHE      = FileCacheHelper::FileStoreWithExpiration.new("tmp/cache/yahoo_searches")
  def search_news(query_str)
    url = "http://boss.yahooapis.com/ysearch/news/v1/#{URI.encode(query_str)}?appid=rTVjc5nV34FpfvB6WhdkGWROJG4kmHx0tu1ORhFL7XkZLFMlicx7lY0CdIY5yiqRQg--&format=json"
    return call_yahoo_api url
  end

  def search_image(query_str)

  end

  def search_answer(query_str)

  end
  
  def call_yahoo_api(url)
    cachekey = cache_key(url)
    data = RESULTS_CACHE.fetch("#{cachekey}", :expires_in => 6.hours) do
      begin
        Net::HTTP.get_response(URI.parse(url)).body
      rescue
        "Connection error."
      end
    end

    result = JSON.parse(data)
    if result.has_key? 'Error'
      raise "web service error"
   end
   return result
  end

end
