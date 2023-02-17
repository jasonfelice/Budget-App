require 'rails_helper'

RSpec.describe 'Testing categories views', type: :feature do
  describe 'categories#index' do
    before(:each) do
      user = User.create! name: 'Tes', email: 'tes@example.com', password: 'password'
      user.categories.create(name: 'Putin', icon: 'https://google.com')

      visit new_user_session_path
      fill_in 'Email', with: 'tes@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      visit category_index_path
    end

    it 'should have add categories button' do
      expect(page).to have_content 'Add a new Category'
    end

    it 'should have Putin category' do
      expect(page).to have_content 'Putin'
    end
  end
end
