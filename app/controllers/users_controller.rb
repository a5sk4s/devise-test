class UsersController < Devise::RegistrationsController
  before_filter :authenticate_scope!, :only => [:index, :show, :current]

  def index
    @users = User.all
    render_with_scope :index
  end

  def show
    @user = User.find(params[:id])
    render_with_scope :show
  end

  def current
    @user = current_user
    render_with_scope :show
  end
end