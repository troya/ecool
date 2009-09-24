class ResourceObserver < ActiveRecord::Observer
	include RpcSearchHelper
	def after_save(resource)
		resource.tags = "" if resource.tags.nil?
		resource.desc = "" if resource.desc.nil?
		
		upsertResourceIndex resource.title, resource.resource_type, resource.tags, resource.desc, 
				resource.id.to_s, resource.updated_at
	end
end
