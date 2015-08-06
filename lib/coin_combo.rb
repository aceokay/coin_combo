class Float
  define_method(:coin_combo) do
    amount = self
    coin_hash = Hash.new()
    coin_hash = {0.01 => [ " penny", " pennies"],  0.05  => [" nickel", " nickels"]}



    if amount < 0.05
      penny_amount = amount.*(100).to_s.sub(".0","")
      if amount == 0.01
        return penny_amount.concat(coin_hash.fetch(0.01)[0])
      else
        return penny_amount.concat(coin_hash.fetch(0.01)[1])
      end
    elsif amount == 0.05
      nickel_amount = amount.*(100)./(5).to_s.sub(".0","")
      return nickel_amount.concat(coin_hash.fetch(0.05)[0])
     end
  end
end
