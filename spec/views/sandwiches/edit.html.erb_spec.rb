require 'rails_helper'

RSpec.describe "sandwiches/edit", type: :view do
  before(:each) do
    @sandwich = assign(:sandwich, Sandwich.create!())
  end

  it "renders the edit sandwich form" do
    render

    assert_select "form[action=?][method=?]", sandwich_path(@sandwich), "post" do
    end
  end
end
