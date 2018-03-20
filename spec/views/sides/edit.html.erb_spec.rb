require 'rails_helper'

RSpec.describe "sides/edit", type: :view do
  before(:each) do
    @side = assign(:side, Side.create!())
  end

  it "renders the edit side form" do
    render

    assert_select "form[action=?][method=?]", side_path(@side), "post" do
    end
  end
end
