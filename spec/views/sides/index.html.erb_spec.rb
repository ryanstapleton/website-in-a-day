require 'rails_helper'

RSpec.describe "sides/index", type: :view do
  before(:each) do
    assign(:sides, [
      Side.create!(),
      Side.create!()
    ])
  end

  it "renders a list of sides" do
    render
  end
end
