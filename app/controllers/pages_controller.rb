class PagesController < ApplicationController
  def home

  end

  def contact
  end

  def menu
    @ingredients = Ingredient.all
    @sides = Side.all
    @sandwiches = Sandwich.all
    @prices = Price.all
    
  end
end
