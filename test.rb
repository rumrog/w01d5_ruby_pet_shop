require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pet_shop')

class TestPetShop < Minitest::Test

  def setup

    @customers = [
      {
        name: "Alice",
        pets: [],
        cash: 1000
      },
      {
        name: "Bob",
        pets: [],
        cash: 50
      },
      {
        name: "Jack",
        pets: [],
        cash: 100
      }
    ]

    @new_pet = {
      name: "Bors the Younger",
      pet_type: :cat,
      breed: "Cornish Rex",
      price: 100
    }

    @pet_shop = {
      pets: [
        {
          name: "Sir Percy",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "King Bagdemagus",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "Sir Lancelot",
          pet_type: :dog,
          breed: "Pomsky",
          price: 1000,
        },
        {
          name: "Arthur",
          pet_type: :dog,
          breed: "Husky",
          price: 900,
        },
        {
          name: "Tristan",
          pet_type: :dog,
          breed: "Basset Hound",
          price: 800,
        },
        {
          name: "Merlin",
          pet_type: :cat,
          breed: "Egyptian Mau",
          price: 1500,
        }
      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Camelot of Pets"
    }
  end

  # def pets_by_breed(pets, pet_breed)
#     breed_array = []
#     for pet in pets[:pets]
#         if pet[:breed].include?(pet_breed)
#             breed_array.push(pet_breed)
#         end
#     end
#     return breed_array
# end

def pets_by_breed(pets, pet_breed)
    #pets.filter_map { |pet_breed| pet[breed].include?(pet_breed)}
    pets.select{|x| x[:breed] == pet_breed}.map{|y| y[:breed]}.reduce(:+)
end