require 'rails_helper'

RSpec.describe "prices/new", type: :view do
  before(:each) do
    assign(:price, Price.new())
  end

  it "renders new price form" do
    render

    assert_select "form[action=?][method=?]", prices_path, "post" do
    end
  end
end
