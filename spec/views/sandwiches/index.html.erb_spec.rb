require 'rails_helper'

RSpec.describe "sandwiches/index", type: :view do
  before(:each) do
    assign(:sandwiches, [
      Sandwich.create!(),
      Sandwich.create!()
    ])
  end

  it "renders a list of sandwiches" do
    render
  end
end
