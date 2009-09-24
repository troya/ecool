	class SearchController < ApplicationController
	include RpcSearchHelper
	def search
		@query_str = params[:q] 
		if !@query_str.nil?
			result = searchResource @query_str
			
			render :text => result.to_json
		end
		
	end
	
	def upsertIndex
		server = XMLRPC::Client.new( "localhost", "/services")

		# Call the remote server and get our result
		result = server.call("CreateUpdateResource.upsertResource", "title1")
		render :text => result.to_json
	end
	
	
end
