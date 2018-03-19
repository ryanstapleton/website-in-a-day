require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  xit 'has 1 ingredient after #create' do
    Ingredient.create(:title => 'avocado', :price => '$1.00')
    expect(Ingredient.count).to eq(1)
  end

  it 'has a default price of nil' do
    Ingredient.create(:title => 'Tomatoes')
    expect(Ingredient.last.price).to eq(nil)
  end

  it 'has a price '
end
