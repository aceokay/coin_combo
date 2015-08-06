# require('rspec')
# require('coin_combo')
# require('pry')
#
# describe('Fixnum#coin_combo') do
#
#   it("takes 25 and returns 'quarter' as the smallest number of coins to give as change") do
#     expect((25).coin_combo).to(eq("1 quarter"))
#   end
#
# end

require('rspec')
require('coin_combo')
require('pry')

describe('Float#coin_combo') do

  it("takes .01 and returns 'penny' as the smallest number of coins to give as change") do
    expect((0.01).coin_combo()).to(eq("1 penny"))
  end

  it("takes .02 and returns 'two pennies' as the smallest number of coins to give as change")do
    expect((0.02).coin_combo()).to(eq("2 pennies"))
  end

  it("takes 0.05 and returns 'one nickel' as the smallest number of coins to give as change") do
    expect((0.05).coin_combo()).to(eq("1 nickel"))
  end

  it("takes 0.06 and returns '1 nickel and 1 penny' as the smallest number of coins to give as change") do
    expect((0.06).coin_combo()).to(eq("1 nickel and 1 penny"))
  end

  it("takes 0.11 and returns '1 dime and 1 penny' as the smallest number of coins to give as change") do
    expect((0.11).coin_combo()).to(eq("1 dime and 1 penny"))
  end

  it("takes 0.17 and returns 3 different appropriate coins as change") do
    expect((0.17).coin_combo()).to(eq("1 dime, 1 nickel and 2 pennies"))
  end

  it("takes 0.25 and returns '1 quarter'") do
    expect((0.25).coin_combo()).to(eq("1 quarter"))
  end

  it("takes 0.41 and returns '1 quarter, 1 dime, 1 nickel and 1 penny'") do
    expect((0.41).coin_combo()).to(eq("1 quarter, 1 dime, 1 nickel and 1 penny"))
  end

  it("takes 1 and returns '4 quarters'") do
    expect((1.00).coin_combo()).to(eq("4 quarters"))
  end

end
