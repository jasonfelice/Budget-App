require 'rails_helper'

describe User, type: :model do
  it 'should be invalid without an email' do
    user = User.create(name: 'Test', email: nil, password: 123_456, password_confirmation: 123_456)
    expect(user).to_not be_valid
  end
  it 'should be valid' do
    user = User.create(name: 'Test', email: 'test@example.com', password: 123_456, password_confirmation: 123_456)
    expect(user).to be_valid
  end
end
