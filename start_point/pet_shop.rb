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
    # return cash[:admin][:total_cash] -= amount
end

# 05. Get pets sold
# access @pet_shop[:admin][:pets_sold]

def pets_sold(sold)
    return sold[:admin][:pets_sold]
end

# 06. Increase pets sold
# add 2 to @pet_shop[:admin][:total_cash]

def increase_pets_sold(pets_sold, sold)
    return pets_sold[:admin][:pets_sold] += 2
end

# 07. Stock count
# .count items within the @pet_shop[:pets] array

def stock_count(count)
    return count[:pets].count
end

# 08. Sort all pets by breed [found]
# 1. function with 2 parameters, pets[:pets] and breed 
# (a string with name of the breed we want to compare)
# 2. define an empty array in breed_array
# 3. loop all the items of the pets[:pets] array
# 4. if inner items of the array (pet[:breed]) 
# match the breed argument, then
# 5. push breed inside the empty breed_array
# 6. Outside the loop, return breed_array
# &
# 09. Sort all pets by bread [no_found]

def pets_by_breed(pets, breed)
    breed_array = []
    for pet in pets[:pets]
        if pet[:breed].include?(breed)
            breed_array.push(breed)
        end
    end
    return breed_array
end

# 10. Find pet by name

# 11. Find pet by name [nil]

# 12. Remove pet by name

# 13. Add pet to stock

# 14. Customer cash

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