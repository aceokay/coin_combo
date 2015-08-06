require('rspec')
require('coin_combo')
require('pry')

describe('Float#coin_combo') do

  it("takes .01 and returns 'penny' as the smallest number of coins to give as change") do
    expect((.01).coin_combo).to(eq("penny"))
  end

end
