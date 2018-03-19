require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  pending 'has 1 ingredient after #create' do
    Ingredient.create(:title => 'avocado', :price => '$1.00')
    expect(Ingredient.count).to eq(1)
  end

  it 'has a default price of "" (an empty string)' do
    Ingredient.create(:title => 'Tomatoes')
    expect(Ingredient.last.price).to eq("")
  end

  pending 'has a price '
end
