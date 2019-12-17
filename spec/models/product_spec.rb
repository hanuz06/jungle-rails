require 'rails_helper'

RSpec.describe Product, type: :model do  
  describe 'Validations' do
    it "is successful with valid attributes" do
      @category = Category.new(name: 'Shoes')
      @product = Product.new(
        name: "Boots",
        price_cents: 4000,
        quantity: 2,
        category: @category
      )
      expect(@product).to be_valid
    end

    it "is not successful without name" do
      @category = Category.new(name: 'Electronics')
      @product = Product.create(
        name: nil,
        price_cents: 35000,
        quantity: 5,
        category: @category
      )      
      expect(@product.errors.full_messages.first).to eq("Name can't be blank")
    end

    it "is not successful without price" do
      @category = Category.new(name: 'Food')
      @product = Product.new(
        name: "ham",
        price_cents: nil,
        quantity: 5,
        category: @category
      )      
      expect(@product).to_not be_valid
    end 
    
    it "is not successful without quantity" do
      @category = Category.new(name: 'Toys')
      @product = Product.new(
        name: "Barby",
        price_cents: 34000,
        quantity: nil,
        category: @category
      )      
      expect(@product).to_not be_valid
    end 

    it "is not successful without category" do      
      @product = Product.new(
        name: "Nokia",
        price_cents: 12000,
        quantity: 5,
        category: nil
      )      
      expect(@product).to_not be_valid
    end     
  end
end

