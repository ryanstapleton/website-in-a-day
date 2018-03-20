require 'rails_helper'

RSpec.describe "sandwiches/show", type: :view do
  before(:each) do
    @sandwich = assign(:sandwich, Sandwich.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
