# 01. Get shop name
# access array one level within main array

def pet_shop_name(pet_shop)
    return pet_shop[:name]
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
end

# 05. Get pets sold
# access @pet_shop[:admin][:pets_sold]

def pets_sold(pet_sold)
    return pet_sold[:admin][:pets_sold]
end

# 06. Increase pets sold
# add 2 to @pet_shop[:admin][:total_cash]

def increase_pets_sold(pet_shop, amount)
    return pet_shop[:admin][:pets_sold] += amount
end

# 07. Stock count
# .count items within the @pet_shop[:pets] array

def stock_count(pet_shop)
    return pet_shop[:pets].count
end

# 08. Sort all pets by breed [found]
# 1. function with 2 parameters, pets array and breed 
# (a string with name of the breed we want to compare)
# 2. define an empty array in breed_array
# 3. loop all items within the pets array
# 4. if inner items of the array (pet[:breed]) 
# match the breed argument, then:
# 5. push breed inside the empty breed_array
# 6. Outside the loop [?], return breed_array
# &
# 09. Sort all pets by breed [no_found]
# 0. nothing to do here? does the include? method
# takes care of this?

# def pets_by_breed(pet_shop, pet_breed)
#     breed_array = []
#     for pet in pet_shop[:pets]
#         if pet[:breed].include?(pet_breed)
#             breed_array.push(pet)
#         end
#     end
#     return breed_array
# end

def pets_by_breed(pet_shop, pet_breed)
    pet_shop[:pets].select{|pet| pet[:breed] == pet_breed}
    # 1. .select grabs the addressed level of the array.
    # 2. then, with a placeholder var, iterates each inner item and checks
    # if the value of key [:breed] is equal to argument of pet_breed.
end

# 10. Find pet by name
# 1. function with 2 parameters; pets array and pet_name
# 2. loop all items within pets array
# 3. if item match argument of pet_name
# 4. return item
# &
# 11. Find pet by name [nil]
# 5. if pet_name doesn't exist, then exit loop and
# return nil
# TIP: return expected output in all levels before try
# something different & comment every attempt

# def find_pet_by_name(pets, pet_name)
#     pets[:pets].each{|x| x[:name].include?(pet_name) ? x : nil}# x[:name] == pet_name}
# end

def find_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
        if pet[:name].include?(pet_name)
            return pet
        end
    end
    return nil
end

# 12. Remove pet by name
# 1. call previous function with same 2 parameters
# 2. assign outcome of previous function to pet_found var
# 3. delete pet_found within pets array.

def remove_pet_by_name(pet_shop, pet_name)
    pet_found = find_pet_by_name(pet_shop, pet_name)
        pet_shop[:pets].delete(pet_found)
end

# 13. Add pet to stock
# 1. to pets array, .push item new_pet argument

def add_pet_to_stock(pet_shop, new_pet)
    pet_shop[:pets].push(new_pet)
    # pet_shop[:pets] << new_pet
end

# 14. Customer cash
# 1. access customer[:cash]

def customer_cash(customer)
    return customer[:cash]
end

# 15. Remove customer cash
# 1. access customer[:cash]
# 2. substract (-=) amount

def remove_customer_cash(customer, amount)
    return customer[:cash] -= amount
end

# 16. Customer pet count
# 1. access customer[:pets] array
# 2. .count items within array

def customer_pet_count(customer)
    return customer[:pets].count
end

# 17. Add pet to customer
# 1. access customer[:pets] array
# 2. .push new_pet argument

def add_pet_to_customer(customer, new_pet)
    customer[:pets].push(new_pet)
end

# --- OPTIONAL ---

# 18. Customer can afford pet - sufficient funds [true]
# 1. declare function with 2 parameters, customer and new_pet
# 2. if customer[:cash] is greater than new_pet[:price] then
# 3. return true
# &
# 19. Customer can afford pet - insufficient funds [false]
# 1. elsif customer[:cash] is lesser than new_pet[:price] then
# 2. return false
# &
# 20. Customer can afford pet - exact funds [true]
# 1. to the if condition of 18.2, add (=) to (>)

def customer_can_afford_pet(customer, new_pet)
    return customer[:cash] >= new_pet[:price]

    # if customer[:cash] >= new_pet[:price]
    #     return true
    # elsif customer[:cash] < new_pet[:price]
    #     return false
    # end
end

# 21. Sell pet to customer - pet found
# &
# 22. Sell pet to customer - pet not found
# &
# 23. Sell pet to customer - insufficient funds
# 1. add pet to customer
# 2. increase pets_sold
# 3. reduce customer cash
# 4. increase shop cash

def sell_pet_to_customer(pet_shop, pet, customer)

    if pet == nil || customer[:cash] < pet[:price]
        return nil
    else
        # reusing previous functions
        add_pet_to_customer(customer, pet)
        increase_pets_sold(pet_shop, customer_pet_count(customer))
        remove_customer_cash(customer, pet[:price])
        add_or_remove_cash(pet_shop, pet[:price])
        
        # using previous functions functionality
        # pet_bought = customer[:pets].push(pet)
        # pet_shop[:admin][:pets_sold] += pet_bought.count
        # customer[:cash] -= pet[:price]
        # pet_shop[:admin][:total_cash] += pet[:price]
    end

end