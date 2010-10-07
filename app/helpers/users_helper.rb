module UsersHelper
  def display(text)
    @user == current_user ? text : truncate(text, :length => 7)
  end
end
