require 'xmlrpc/client'	
module RpcSearchHelper
	def searchResource(query_str)
		server = XMLRPC::Client.new( "localhost", "/services")
		# Call the remote server and get our result
		server.call("SearchResource.search", query_str)
	end
	
	def upsertResourceIndex(title, type, tags, desc, id, date)
		server = XMLRPC::Client.new( "localhost", "/services")

		# Call the remote server and get our result
		server.call("CreateUpdateResource.upsertResource", title, type, tags, desc, id, date)
	end
end
