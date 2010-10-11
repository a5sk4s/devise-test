require 'spec_helper'

describe "devise/registrations/new.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User).as_new_record)
    @view.stub(:resource).and_return(@user)
    @view.stub(:resource_name).and_return('user')
    @view.stub(:devise_mapping).and_return(Devise.mappings[:user])
    @view.stub(:resource_class).and_return(Devise.mappings[:user].to)
  end

  it "renders new user form" do
    render

    rendered.should have_selector("form", :action => users_path, :method => "post") do |form|
    end
  end
end
