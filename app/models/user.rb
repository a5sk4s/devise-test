class User < ActiveRecord::Base
  # Others available are:
  # :token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, # :validatable,
         :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # validates_uniqueness_of :email, :scope => authentication_keys[1..-1], :case_sensitive => false, :allow_blank => true
  validates :email,
    :presence => true, 
    :uniqueness => { :case_sensitive => false, :allow_blank => true },
    :format => { :with  => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i, :allow_blank => true }

  validates :password, 
    :presence => true, 
    :confirmation => true, 
    :length => { :within => 6..40 }, 
    :format => { :with => /^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*(\W|_))([\x20-\x7E])*$/, :message => 'must contain at least one upper-case, lower-case, digit and special character' },
    :if => :password_required?

    def password_required?
      !persisted? || !password.nil? || !password_confirmation.nil?
    end
end
