class Float
  define_method(:coin_combo) do
    amount = self

    penny_amount = amount.*(100).to_s.sub(".0","")

    if amount < 0.05
      if amount == 0.01
        return penny_amount.concat(" penny")
      else
        return penny_amount.concat(" pennies")
      end
    end
  end
end
