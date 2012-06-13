require 'httparty'

class Lyric
  include HTTParty
  format :json
  base_uri 'http://localhost:9200'

  def self.search(q)
    options = {:headers => {'Content-Type' => 'application/json'}}
    HTTParty.get(base_uri + "/lyrics/_search?q=%22#{URI.escape(q)}%22", options)
  end

end
