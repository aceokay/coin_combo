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
    amount = self.round(2).*(100).to_i
    # binding.pry
    coin_hash = Hash.new()
    coin_hash = {1 => [ " penny", " pennies"],  5  => [" nickel", " nickels"], 10 => [" dime", " dimes"], 25 => [" quarter", " quarters"]}
    amount_return = ""
    while amount > 0
      if amount < 5
        penny_amount = amount.to_s
        # binding.pry
        if amount < 2
          amount_return.concat(penny_amount.concat(coin_hash.fetch(1)[0]))
        else
          amount_return.concat(penny_amount.concat(coin_hash.fetch(1)[1]))
        end
        amount = 0
      elsif amount <= 10
        nickel_amount = amount./(5).to_s
        if amount < 10
          amount_return.concat(nickel_amount.concat(coin_hash.fetch(5)[0]))
        else
          amount_return.concat(nickel_amount.concat(coin_hash.fetch(5)[1]))
        end
        amount -= 5.*(nickel_amount.to_i())
        # binding.pry
        if amount > 0
          amount_return.concat(" and ")
        end
      elsif amount <= 20
        dime_amount = amount./(10).to_s
        if amount < 20
          amount_return.concat(dime_amount.concat(coin_hash.fetch(10)[0]))
        else
          amount_return.concat(dime_amount.concat(coin_hash.fetch(10)[1]))
        end
        amount -= 10.*(dime_amount.to_i())
        # binding.pry
        if amount > 5
          amount_return.concat(", ")
        else
          amount_return.concat(" and ")
        end
      else
        quarter_amount = amount./(25).to_s
        if amount > 50
          amount_return = quarter_amount.concat(coin_hash.fetch(25)[1])
        elsif amount_return == ""
          amount_return = quarter_amount.concat(coin_hash.fetch(25)[0])
        end
        amount -= 25.*(quarter_amount.to_i())
        # binding.pry
        if amount > 0 && amount < 15
          amount_return.concat(" and ")
        elsif amount >= 15
          amount_return.concat(", ")
        end
      end
    end
    return amount_return
  end
end
