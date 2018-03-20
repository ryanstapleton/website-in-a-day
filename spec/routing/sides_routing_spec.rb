require "rails_helper"

RSpec.describe SidesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sides").to route_to("sides#index")
    end

    it "routes to #new" do
      expect(:get => "/sides/new").to route_to("sides#new")
    end

    it "routes to #show" do
      expect(:get => "/sides/1").to route_to("sides#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sides/1/edit").to route_to("sides#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sides").to route_to("sides#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sides/1").to route_to("sides#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sides/1").to route_to("sides#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sides/1").to route_to("sides#destroy", :id => "1")
    end

  end
end
