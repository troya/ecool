module FileCacheHelper
  def fetch(url, max_age=0)
      file = MD5.hexdigest(url)
      file_path = File.join("", @cache_dir, file)
      # we check if the file -- a MD5 hexdigest of the URL -- exists
      #  in the dir. If it does and the data is fresh, we just read
      #  data from the file and return
      if File.exists? file_path
         return File.new(file_path).read if Time.now-File.mtime(file_path)<max_age
      end
      # if the file does not exist (or if the data is not fresh), we
      #  make an HTTP request and save it to a file
      File.open(file_path, "w") do |data|
         data << Net::HTTP.get_response(URI.parse(url)).body
      end
   end
   def cache_key
    key = Digest::MD5.hexdigest(@query)
    "#{key[0..1]}/#{key[2..3]}/#{key[4..-1]}"
   end
end
