require 'rails_helper'

RSpec.describe "prices/index", type: :view do
  before(:each) do
    assign(:prices, [
      Price.create!(),
      Price.create!()
    ])
  end

  it "renders a list of prices" do
    render
  end
end
