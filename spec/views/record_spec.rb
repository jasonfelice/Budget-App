require 'rails_helper'

RSpec.describe 'Testing categories views', type: :feature do
  describe 'categories#index' do
    before(:each) do
      user = User.create! name: 'Tes', email: 'tes@example.com', password: 'password'
      @category = Category.create(name: 'Putin', icon: 'https://google.com', user_id: user.id)

      visit new_user_session_path
      fill_in 'Email', with: 'tes@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      visit category_index_path
      click_link 'Putin'
    end

    it 'should have a Putin category' do
      expect(page).to have_content 'Putin'
    end

    it 'should have a Putin category' do
      click_link 'Create a new Record'
      fill_in 'Name', with: 'Compass'
      fill_in 'Amount', with: 55
      click_button 'Create Record'
      expect(page).to have_content 'Compass'
    end
  end
end
