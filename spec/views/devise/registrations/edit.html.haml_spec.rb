require 'spec_helper'

describe "devise/registrations/edit.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User))
    @view.stub(:resource).and_return(@user)
    @view.stub(:resource_name).and_return('user')
    @view.stub(:devise_mapping).and_return(Devise.mappings[:user])
  end

  it "renders the edit user form" do
    render

    rendered.should have_selector("form", :action => users_path, :method => "post") do |form|
      form.should have_selector("input", :type => "hidden", :name => "_method", :value => "put")
    end
  end
end
