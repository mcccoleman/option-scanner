require 'faraday'
require 'json'
require 'pry'
require 'dotenv/load'

module Polygon
  module Base
    def make_request(params)
      response = Faraday.get("https://api.polygon.io/v3/reference/options/contracts?#{params}&apiKey=#{api_key}")
      JSON.parse(response.body) if response.status == 200
    end

    module_function :make_request

    def self.api_key
      ENV.fetch('POLYGON_API_KEY', nil)
    end
  end
end
