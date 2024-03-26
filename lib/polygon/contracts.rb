require_relative 'utils/base'

module Polygon
  class Contracts
    def self.get_option_contracts(ticker)
      Base.make_request("underlying_ticker=#{ticker}")
    end
  end
end
