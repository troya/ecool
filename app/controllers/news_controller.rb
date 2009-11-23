class NewsController < ApplicationController
  include YahooApiHelper
  def all
    @result = searchNews("gossip girl")
  end

end
