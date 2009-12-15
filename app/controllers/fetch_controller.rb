class FetchController < ApplicationController
	include YahooApiHelper
	def tv
		@data = imdb_movies_this_week().css('a.title')
	end
end
