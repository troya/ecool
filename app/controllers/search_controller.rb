require 'xmlrpc/client'		
class SearchController < ApplicationController
	def search
		server = XMLRPC::Client.new( "localhost", "/services")

		# Call the remote server and get our result
		result = server.call("SearchResource.search", "wokao")
		render :text => result[0]["date"].to_json
		
	end
	
	def upsertIndex
		server = XMLRPC::Client.new( "localhost", "/services")

		# Call the remote server and get our result
		result = server.call("CreateUpdateResource.upsertResource", "title1")
		render :text => result.to_json
	end
end
