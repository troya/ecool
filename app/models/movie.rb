class Movie < ActiveRecord::Base
  has_url_key :title

  def to_param
    url_key
  end

end
