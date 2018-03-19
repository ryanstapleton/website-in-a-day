require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'has 1 ingredient after #create' do
    Ingredient.create(:title => 'avocado', :price => '$1.00')
    expect(Ingredient.count).to eq(1)
  end
end
