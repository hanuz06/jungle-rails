require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it "is successful with correct password confirmation" do
      @user = User.new(first_name: 'Peter', last_name:"Lim", email: 'aga@yahoo.com', password: "1233456", password_confirmation: '1233456')     
      
      expect(@user).to be_valid
    end

    it "is not successful with incorrect password confirmation" do
      @user = User.new(first_name: 'Peter', last_name:"Lim", email: 'aga@yahoo.com', password: "1233456", password_confirmation: 'dfgdfgdfg')     
      
      expect(@user).to_not be_valid
    end

    it "is not successful without unique email address" do
      User.create(first_name: 'Peter', last_name:"Lim", email: 'aga7@yahoo.com', password: "1233456", password_confirmation: '1233456')    
      
      @user1 = User.new(first_name: 'Maria', last_name:"Son", email: 'aga7@yahoo.com', password: "heroku", password_confirmation: 'heroku') 
      
      expect(@user1).to_not be_valid
    end

    it "is not successful without first name" do
      @user = User.new(first_name: nil , last_name:"Lima", email: 'aga1@yahoo.com', password: "1233456", password_confirmation: '1233456')            
      
      expect(@user).to_not be_valid
    end

    it "is not successful without last name" do
      @user = User.new(first_name: "Harry" , last_name: nil, email: 'aga1@yahoo.com', password: "1233456", password_confirmation: '1233456')            
      
      expect(@user).to_not be_valid
    end

    it "is not successful without email" do
      @user = User.new(first_name: "Braun" , last_name:"Lima", email: nil, password: "1233456", password_confirmation: '1233456')            
      
      expect(@user).to_not be_valid
    end

    it "is not successful without meeting minimum password length" do
      @user = User.new(first_name: "Braun" , last_name:"Lima", email: 'jeel@ya.ru', password: "1233", password_confirmation: '1233')            
      
      expect(@user).to_not be_valid
    end
    
  end  

  describe '.authenticate_with_credentials' do

    it "is successful and user found with correct email and password" do
     @user = User.create(first_name: "Bob" , last_name:"Black", email: 'kim@ya.ru', password: "123456789", password_confirmation: '123456789') 
      
      userExists = User.authenticate_with_credentials(@user.email, @user.password)            
      
      expect(userExists).to be_truthy
    end
    
  end

  describe 'login' do

    it "is successful with wrong character case in email address" do
     @user = User.create(first_name: "Bob" , last_name:"Black", email: 'kim@ya.ru', password: "123456789", password_confirmation: '123456789') 
      
      userExists = User.authenticate_with_credentials("kIM@ya.ru", @user.password)            
      
      expect(userExists).to be_truthy
    end

    it "is successful with white spaces in email address" do
      @user = User.create(first_name: "Bob" , last_name:"Black", email: 'kim@ya.ru', password: "123456789", password_confirmation: '123456789') 
       
       userExists = User.authenticate_with_credentials(" kim@ya.ru ", @user.password)            
       
       expect(userExists).to be_truthy
     end
    
  end

end

