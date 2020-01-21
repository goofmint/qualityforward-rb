module Qualityforward
  class Project < Hash
    include Qualityforward
    
    def initialize(body = {})
      @client = Qualityforward::Client.new
      self.sets body
    end
    
    def sets body
      body.each do |key, value|
        self.set(key, value)
      end
    end
    
    def set key, value
      self[key] = value
    end
    
    def self.get
      client = Qualityforward::Client.new(@@api_key)
      json = client.get '/api/v2/current_project.json'
      Qualityforward::Project.new(json)
    end
  end
end