require 'test_helper'

class YahooApiHelperTest < ActionView::TestCase
  def test_yahoo_news_search
    result = searchNews("gossip girl")
    result['ResultSet']['Result'].each { |result_entry|
      print "#{result_entry['Title']} => #{result_entry['Url']}\n"
    }
  end
end
