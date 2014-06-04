require "spec_helper"

describe DoitListsController do
  describe "routing" do

    it "routes to #index" do
      get("/doit_lists").should route_to("doit_lists#index")
    end

    it "routes to #new" do
      get("/doit_lists/new").should route_to("doit_lists#new")
    end

    it "routes to #show" do
      get("/doit_lists/1").should route_to("doit_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doit_lists/1/edit").should route_to("doit_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doit_lists").should route_to("doit_lists#create")
    end

    it "routes to #update" do
      put("/doit_lists/1").should route_to("doit_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doit_lists/1").should route_to("doit_lists#destroy", :id => "1")
    end

  end
end
