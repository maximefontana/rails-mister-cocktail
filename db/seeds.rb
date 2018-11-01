# rubocop:disable all
# frozen_string_literal: true
require 'json'
require 'open-uri'

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do |i|
  Ingredient.create(name: i['strIngredient1'])
end
