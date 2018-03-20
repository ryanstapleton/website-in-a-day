require 'rails_helper'

RSpec.describe "sandwiches/new", type: :view do
  before(:each) do
    assign(:sandwich, Sandwich.new())
  end

  it "renders new sandwich form" do
    render

    assert_select "form[action=?][method=?]", sandwiches_path, "post" do
    end
  end
end
