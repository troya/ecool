class NewsController < ApplicationController
  include YahooApiHelper
  def all
    @result = search_news("gossip girl")
  end
end
