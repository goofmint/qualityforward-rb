require "faraday"
require "json"

module Qualityforward
  class Client
    include Qualityforward
    def initialize(api_key = nil)
      @@api_key = api_key unless nil
    end
    
    def url path
      return "#{@@url}#{path}?api_key=#{@@api_key}"
    end
    
    def get path
      res = Faraday.get url(path)
      JSON.parse res.body
    end
  end
end