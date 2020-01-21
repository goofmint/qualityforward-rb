require "qualityforward/version"
require "qualityforward/client"
require "qualityforward/project"

module Qualityforward
  class Error < StandardError; end
  # Your code goes here...
  @@url = 'https://cloud.veriserve.co.jp'
  @@api_key = ''

  def method_missing(method, *params)
    if method.to_s[-1,1] == "="
      # シンボルキーに優先的に書き込む
      key = method.to_s[0..-2].gsub(':', '')
      key = self.has_key?(key.to_sym) ? key.to_sym :
        ( self.has_key?(key.to_s) ? key.to_s : key.to_sym )
      self[key] = params.first
    else
      # シンボルキーとストリングキー両方存在する場合、
      # シンボルキーを優先的に返す
      key = self.has_key?(method.to_sym) ? method.to_sym : method.to_s
      self[key]
    end
  end
end
