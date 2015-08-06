# class Fixnum
#   define_method(:coin_combo) do
#     amount = self
#     coin_hash = Hash.new()
#     coin_hash = {0.01 => [ " penny", " pennies"],  0.05  => [" nickel", " nickels"], 0.10 => [" dime", " dimes"]}
#     amount_return = ""
#
#     until amount.==(0)
#       if amount > 25
#
#         amount_return.concat()
#       end
#     end
#   end
# end



























class Float
  define_method(:coin_combo) do
    amount = self.round(2)
    coin_hash = Hash.new()
    coin_hash = {0.01 => [ " penny", " pennies"],  0.05  => [" nickel", " nickels"], 0.10 => [" dime", " dimes"], 0.25 => [" quarter", " quarters"]}
    amount_return = ""
    while amount > 0
      if amount < 0.05
        penny_amount = amount.*(100).round(2).to_s.slice(0..0)
        # binding.pry
        if amount < 0.02 && amount > 0
          amount_return.concat(penny_amount.concat(coin_hash.fetch(0.01)[0]))
        else
          amount_return.concat(penny_amount.concat(coin_hash.fetch(0.01)[1]))
        end
        amount = 0
      elsif amount <= 0.10
        nickel_amount = amount.*(100)./(5).to_s.slice(0..0)
        if amount < 0.10
          amount_return.concat(nickel_amount.concat(coin_hash.fetch(0.05)[0]))
        else
          amount_return.concat(nickel_amount.concat(coin_hash.fetch(0.05)[1]))
        end
        amount -= 0.05
        if amount > 0
          amount_return.concat(" and ")
        end
      elsif amount <= 0.20
        dime_amount = amount.*(100)./(10).to_s.slice(0..0)
        if amount < 0.20
          amount_return.concat(dime_amount.concat(coin_hash.fetch(0.10)[0]))
        else
          amount_return.concat(dime_amount.concat(coin_hash.fetch(0.10)[1]))
        end
        amount -= 0.10
        # binding.pry
        if amount > 0.05
          amount_return.concat(", ")
        else
          amount_return.concat(" and ")
        end
      else
        quarter_amount = amount.*(100)./(25).to_s.slice(0..0)
        if amount < 0.50
          amount_return = quarter_amount.concat(coin_hash.fetch(0.25)[0])
        else
          amount_return = quarter_amount.concat(coin_hash.fetch(0.25)[1])
        end
        amount -= 0.25
        # binding.pry
        if amount > 0 && amount < 0.06
          amount_return.concat(" and ")
        elsif amount > 0.05
          amount_return.concat(", ")
        else
          break
        end
      end
    end
    return amount_return
  end
end
