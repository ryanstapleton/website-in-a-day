require 'rails_helper'

RSpec.describe "prices/show", type: :view do
  before(:each) do
    @price = assign(:price, Price.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
