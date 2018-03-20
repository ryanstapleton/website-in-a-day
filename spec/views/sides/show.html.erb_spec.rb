require 'rails_helper'

RSpec.describe "sides/show", type: :view do
  before(:each) do
    @side = assign(:side, Side.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
