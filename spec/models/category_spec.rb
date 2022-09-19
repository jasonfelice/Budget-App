require 'rails_helper'

describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Test', email: 'test@example.com', password: 123_456, password_confirmation: 123_456)
  end
  it 'should be invalid without the icon' do
    category = Category.create(name: 'Test', icon: nil, user_id: @user.id)
    expect(category).to_not be_valid
  end
  it 'should be valid' do
    category = Category.create(name: 'Test', icon: 'icon', user_id: @user.id)
    expect(category).to be_valid
  end
end
