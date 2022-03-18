require_relative '../rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'joe', email: 'mail@mail', password: 'password')
    @entity = Entity.new(name: 'Purse', amount: 12.50, user_id: @user.id)
  end

  it 'should have name' do
    expect(@entity.name).to eq('Purse')
    expect(@entity).to be_valid
  end

  it 'should have amount' do
    expect(@entity.amount).to eq(12.50)
    expect(@entity).to be_valid
  end

  it 'should have user_id' do
    expect(@entity.user_id).to eq(@user.id)
    expect(@entity).to be_valid
  end

  it 'password should be present' do
    expect(@user).to be_valid
  end
end
