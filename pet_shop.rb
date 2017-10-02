#---test 1 -- #

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#  --test 2 -- #

def total_cash(money)
  return money[:admin][:total_cash]
end

#  --test 3 & 4 -- #

def add_or_remove_cash(pet_shop, amount)
pet_shop[:admin][:total_cash] += amount
end

#  -- test 5 -- #

def pets_sold(pet_sold)
  return pet_sold[:admin][:pets_sold]
end

#  -- test 6 -- #

def increase_pets_sold(pet_shop, pets)
pet_shop[:admin][:pets_sold] += pets
end

#  -- test 7 -- #

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

#  -- test 8 & 9 -- #

def pets_by_breed(pet_shop, breed)
  pets_array = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets_array << pet
    end
  end
  return pets_array
end

#  -- test 10 & 11 -- #

def find_pet_by_name(pet_shop, input_name)
  for pet in pet_shop[:pets]
    if (pet[:name] == input_name)
      return pet
    end
  end
  return nil
end

#  --test 12 -- #

def remove_pet_by_name(pet_shop, name)
  pet = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(pet)
end

# -- test 13 -- #

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#   -- test 14 -- #

def customer_pet_count(customer)
  return customer[:pets].count
end

# -- test 15 -- #

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#  -- test 16 & 17 -- #

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

# # -- test 18 -- #
# #find by name
def sell_pet_to_customer(pet_shop, pet, customer)

# pet = find_pet_by_name(pet_shop, name)
   find_pet_by_name(pet_shop, pet)
#   def sell_pet_to_customer(pet_shop, pet, customer)
#   # add pet to customer
   add_pet_to_customer(customer, pet)
#      customer[:pets].push(pet)
#      # add to pets_sold in admin
   increase_pets_sold(pet_shop, 1)
#      pet_shop[:admin][:pets_sold].push(pet)
#      # add cash to admin
#      pet_shop[:admin][:total_cash] + (900)
   add_or_remove_cash(pet_shop, pet[:price])
end

#  -- test 19 --
# def sell_pet_to_customer(pet_shop, pet, customer)
# #    # find pet
#    test_find_pet_by_name__returns_nil(pet_shop, pet)
#     #pet = find_pet_by_name(@pet_shop, "Fred")
#     #assert_nil(pet)
#     #
#
#
#
#
#
#
#
#
#
# end
