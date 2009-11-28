module FileCacheHelper
  class FileStoreWithExpiration < ActiveSupport::Cache::FileStore

    def read(name, options = nil)
      expires_in = options.is_a?(Hash) && options.has_key?(:expires_in) ? options[:expires_in] : 0
      file_path = real_file_path(name)
      return if expires_in > 0 && File.exists?(file_path) && (File.mtime(file_path) < (Time.now - expires_in))
      super
    end

  end
  def cache_key(key_src)
    key = Digest::MD5.hexdigest(key_src)
    "#{key[0..1]}/#{key[2..3]}/#{key[4..-1]}"
  end
  
end
