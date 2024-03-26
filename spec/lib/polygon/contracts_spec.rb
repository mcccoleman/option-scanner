require_relative '../../../lib/polygon/contracts'
require 'pry'

RSpec.describe Polygon::Contracts do
  before do
    allow(Polygon::Base)
      .to receive(:make_request)
      .with('underlying_ticker=SPYX')
      .and_return({ status: 'OK' })
  end

  describe 'get_option_contracts' do
    context 'when called' do
      it 'returns the contracts for the ticker' do
        response = described_class.get_option_contracts('SPYX')
        expect(response[:status]).to eq('OK')
      end
    end
  end
end
