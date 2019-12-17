class User < ActiveRecord::Base

  has_secure_password

   validates :password, presence: true, length: { in: 5..10 }  
   validates :password_confirmation, presence: true
   validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false }
   validates :first_name, presence: true
   validates :last_name, presence: true

   def authenticate_with_credentials(email, password)

    @user =  User.find_by_email(email)

    @user if @user && @user.authenticate(password)
  
  end
  
end
