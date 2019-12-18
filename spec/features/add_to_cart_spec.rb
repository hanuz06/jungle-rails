require 'rails_helper'

RSpec.feature "Users can click the 'Add to Cart' button for a product on the home page and", type: :feature, js: true do
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

  scenario "and can see in the navigation bar 'My Cart' count increased by 1" do
    # ACT. User navigates to Home page
    visit root_path

    # commented out b/c it's for debugging only
    # save_screenshot OR save_and_open_screenshot    
    
    # Check for products on the Home page
    expect(page).to have_css 'article.product', count: 10

    #Check initial My Cart value is zero
    
    expect(page).to have_content("My Cart 0") 
    
    # Find and click on Add button 
    find(".btn.btn-primary", match: :first).click

    #Check My Cart value turned to 1
    expect(page).to have_content("My Cart 1") 
    
    save_screenshot   

  end
end
