require 'rails_helper'

describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Test', email: 'test@example.com', password: 123_456, password_confirmation: 123_456)
  end
  it 'should be valid' do
    category = Record.create(name: 'Test', amount: 5, user_id: @user.id)
    expect(category).to be_valid
  end
  it 'should not be valid if amount is less than 1' do
    category = Record.create(name: 'Test', amount: 0, user_id: @user.id)
    expect(category).to_not be_valid
  end
end
