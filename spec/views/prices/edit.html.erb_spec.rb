require 'rails_helper'

RSpec.describe "prices/edit", type: :view do
  before(:each) do
    @price = assign(:price, Price.create!())
  end

  it "renders the edit price form" do
    render

    assert_select "form[action=?][method=?]", price_path(@price), "post" do
    end
  end
end
