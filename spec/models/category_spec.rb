require_relative '../rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'joe', email: 'mail@mail', password: 'password')
    @category = Category.new(user_id: @user.id, name: 'Mom Expenses', icon: 'Fun happy-outline')
  end

  it 'should have name' do
    expect(@category.name).to eq('Mom Expenses')
    expect(@category).to be_valid
  end

  it 'should have amount' do
    expect(@category.icon).to eq('Fun happy-outline')
    expect(@category).to be_valid
  end

  it 'should have user_id' do
    expect(@category.user_id).to eq(@user.id)
    expect(@category).to be_valid
  end

  it 'password should be present' do
    expect(@user).to be_valid
  end
end
