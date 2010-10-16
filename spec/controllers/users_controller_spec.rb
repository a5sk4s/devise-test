require 'spec_helper'

describe UsersController do
  include Devise::TestHelpers

  def mock_user(stubs={})
    @mock_user ||= mock_model(User, stubs).as_null_object
  end

  describe "when no user is authenticated" do
    before(:each) do
      request.env["devise.mapping"] = Devise.mappings[:user]
    end

    describe "GET index" do
      it "fails to load" do
        get :index
        response.should_not be_success
      end

      it "redirects to the login page" do
        get :index
        response.should redirect_to(new_user_session_url)
        # response.should redirect_to(login_url)
      end
    end

    describe "GET show" do
      it "fails to load" do
        get :show, :id => "13"
        response.should_not be_success
      end

      it "redirects to the login page" do
        get :show, :id => "13"
        response.should redirect_to(new_user_session_url)
        # response.should redirect_to(login_url)
      end
    end
  end

  describe "when a user is authenticated" do
    before(:each) do
      request.env["devise.mapping"] = Devise.mappings[:user]
      cu = Factory.create(:valid_user)
      User.stub(:find).with(:first, {:conditions => {:id => cu.id}}) { cu }
      sign_in cu
    end

    describe "GET index" do
      it "assigns all users as @users" do
        User.stub(:all) { [mock_user] }
        get :index
        assigns(:users).should eq([mock_user])
      end
    end

    describe "GET show" do
      it "assigns the requested user as @user" do
        User.stub(:find).with("13") { mock_user }
        get :show, :id => "13"
        assigns(:user).should be(mock_user)
      end
    end
  end
end
