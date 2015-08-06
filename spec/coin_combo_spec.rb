require('rspec')
require('coin_combo')
require('pry')

describe('Float#coin_combo') do

  it("takes .01 and returns 'penny' as the smallest number of coins to give as change") do
    expect((0.01).coin_combo).to(eq("1 penny"))
  end

  it("takes .02 and returns 'two pennies' as the smallest number of coins to give as change")do
    expect((0.02).coin_combo).to(eq("2 pennies"))
  end

  it("takes 0.05 and returns 'one nickel' as the smallest number of coins to give as change") do
    expect((0.05).coin_combo).to(eq("1 nickel"))
  end

  it("takes 0.06 and returns '1 nickel and 1 penny' as the smallest number of coins to give as change") do
    expect((0.06).coin_combo).to(eq("1 nickel and 1 penny"))
  end

  it("takes 0.11 and returns '1 dime and 1 penny' as the smallest number of coins to give as change") do
    expect((0.11).coin_combo).to(eq("1 dime and 1 penny"))
  end

end
