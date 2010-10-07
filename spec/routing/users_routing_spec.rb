require "spec_helper"

describe UsersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/users" }.should route_to(:controller => "users", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/register" }.should route_to(:controller => "devise/registrations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/users/1" }.should route_to(:controller => "users", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/users/edit" }.should route_to(:controller => "devise/registrations", :action => "edit")
    end

    it "recognizes and generates #create" do
      { :post => "/users" }.should route_to(:controller => "devise/registrations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/users" }.should route_to(:controller => "devise/registrations", :action => "update")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/users" }.should route_to(:controller => "devise/registrations", :action => "destroy")
    end

  end
end
