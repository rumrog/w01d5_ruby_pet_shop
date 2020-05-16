def sell_pet_to_customer(pets, pet, customer)
    
    pet_sold = customer[:pets].push(pet)
    p pet_sold.count
    
end