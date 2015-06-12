require "rails_helper"

RSpec.describe MmaGymsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mma_gyms").to route_to("mma_gyms#index")
    end

    it "routes to #new" do
      expect(:get => "/mma_gyms/new").to route_to("mma_gyms#new")
    end

    it "routes to #show" do
      expect(:get => "/mma_gyms/1").to route_to("mma_gyms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mma_gyms/1/edit").to route_to("mma_gyms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mma_gyms").to route_to("mma_gyms#create")
    end

    it "routes to #update" do
      expect(:put => "/mma_gyms/1").to route_to("mma_gyms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mma_gyms/1").to route_to("mma_gyms#destroy", :id => "1")
    end

  end
end
