require 'spec_helper'

describe "users/show.html.haml" do
  include Devise::TestHelpers

  before(:each) do
    @user = assign(:user, stub_model(User))
  end

  it "renders attributes in <p>" do
    render
  end
end
