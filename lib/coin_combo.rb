class Float
  define_method(:coin_combo) do
    amount = self
    coin_hash = Hash.new()
    coin_hash = {0.01 => [ " penny", " pennies"],  0.05  => [" nickel", " nickels"]}
    amount_return = ""

    while amount > 0
      if amount < 0.05
        penny_amount = amount.*(100).ceil.to_s.slice(0..0)
        # binding.pry
        if amount < 0.01 && amount > 0
          amount_return.concat(penny_amount.concat(coin_hash.fetch(0.01)[0]))
        else
          amount_return.concat(penny_amount.concat(coin_hash.fetch(0.01)[1]))
        end
        amount = 0
      elsif amount <= 0.10
        nickel_amount = amount.*(100)./(5).to_s.slice(0..0)
        if amount < 0.10
          amount_return = nickel_amount.concat(coin_hash.fetch(0.05)[0])
        else
          amount_return = nickel_amount.concat(coin_hash.fetch(0.05)[1])
        end
        amount -= 0.05
        if amount > 0
          amount_return.concat(" and ")
        end
      end
    end
    return amount_return
  end
end
