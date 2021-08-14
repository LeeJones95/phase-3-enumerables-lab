require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  spicy_food_names = []
  spicy_foods.map do |spicy_food|
    spicy_food_names.append(spicy_food[:name])
  end
  spicy_food_names
end

get_names(spicy_foods)

#binding.pry
# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spiciest_foods_heat_level = []
  spicy_foods.map do |spicy_food|
    if spicy_food [:heat_level] > 5
      spiciest_foods_heat_level.append(spicy_food)
    end
  end
  spiciest_foods_heat_level
end

spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  heat_level = []
  spicy_foods.map do |spicy_food|

end

print_spicy_foods(spicy_foods)

binding.pry

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |spicy_food|
    spicy_food[:cuisine] == "#{cuisine}"
  end

end

get_spicy_food_by_cuisine(spicy_foods, "American")
# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  sorted_spicy_foods = spicy_foods.sort do |spicy_food1, spicy_food2|
    if spicy_food1[:heat_level] == spicy_food2[:heat_level]
      0
    elsif spicy_food1[:heat_level] < spicy_food2[:heat_level]
      -1
    elsif spicy_food1[:heat_level] > spicy_food2[:heat_level]
      1
    end
  end
  sorted_spicy_foods
end


# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  length = spicy_foods.length
  total = 0
  spiciest_foods_heat_level = []
  spicy_foods.map do |spicy_food|
    total += spicy_food[:heat_level]
  end
  total = total / length
  total
end
