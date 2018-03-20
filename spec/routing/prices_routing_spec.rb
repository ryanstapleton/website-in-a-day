require "rails_helper"

RSpec.describe PricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prices").to route_to("prices#index")
    end

    it "routes to #new" do
      expect(:get => "/prices/new").to route_to("prices#new")
    end

    it "routes to #show" do
      expect(:get => "/prices/1").to route_to("prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prices/1/edit").to route_to("prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prices").to route_to("prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/prices/1").to route_to("prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/prices/1").to route_to("prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prices/1").to route_to("prices#destroy", :id => "1")
    end

  end
end
