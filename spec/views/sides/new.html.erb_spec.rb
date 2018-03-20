require 'rails_helper'

RSpec.describe "sides/new", type: :view do
  before(:each) do
    assign(:side, Side.new())
  end

  it "renders new side form" do
    render

    assert_select "form[action=?][method=?]", sides_path, "post" do
    end
  end
end
