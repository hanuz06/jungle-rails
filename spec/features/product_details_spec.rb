require 'rails_helper'

RSpec.feature "User navigates from the home page to the product detail page", type: :feature, js: true do  

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99)
    end
  end

  scenario "and can see a single product's detail" do
    # ACT. User navigates to Home page
    visit root_path

    # commented out b/c it's for debugging only
    # save_screenshot OR save_and_open_screenshot    
    
    # Check for products on the Home page
    expect(page).to have_css 'article.product', count: 10
    
    # Check for product info on the Product details page 
    find('.btn.btn-default.pull-right', match: :first).click
    
    save_screenshot

    expect(page).to have_css("article.product-detail") 

  end

end
