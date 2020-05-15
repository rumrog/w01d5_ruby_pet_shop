# 01. Get shop name
# access array one level within main array

def pet_shop_name(shop)
    return shop[:name]
end

# 02. Get shop's total cash
# access @pet_shop[:admin][:total_cash]

def total_cash(sum)
    return sum[:admin][:total_cash]
end
# 03. Add or remove cash [add]
# add +10 to @pet_shop[:admin][:total_cash]

# & 

# 04. Add or remove cash [remove]
# remove -10 to @pet_shop[:admin][:total_cash]

def add_or_remove_cash(cash, amount)
    return cash[:admin][:total_cash] += amount
    return cash[:admin][:total_cash] -= amount
end

# 05. Get pets sold
# access @pet_shop[:admin][:pets_sold]

def pets_sold(sold)
    return sold[:admin][:pets_sold]
end

# 06. Increase pets sold



# 07. Stock count

# 08. Sort all pets by breed [found]

# 09. Sort all pets by bread [no_found]

# 10. Find pet by name

# 10. Find pet by name [nil]

# 11. Remove pet by name

# 12. Add pet to stock

# 13. Customer cash

# 15. Remove customer cash

# 16. Customer pet count

# 17. Add pet to customer

# --- OPTIONAL ---

# 18. Customer can afford pet - sufficient funds [true]

# 19. Customer can afford pet - insufficient funds [false]

# 20. Customer can afford pet - exact funds [true]

# 21. Sell pet to customer - pet found

# 22. Sell pet to customer - pet not found

# 23. Sell pet to customer - insufficient funds