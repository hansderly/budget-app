require 'rails_helper'

RSpec.describe Entity, type: :model do
  user = User.create(name: 'John Doe')
  entity = Entity.create(name: 'Test Entity', amount: 10, user_id: user.id)

  it 'is valid with valid attributes' do
    expect(entity.name).to eq('Test Entity')
  end

  it 'have a name' do
    expect(entity.name).to eq('Test Entity')
  end

  it 'have an amount' do
    expect(entity.amount).to eq(10)
  end

  it 'is not valid without a name' do
    entity.name = nil
    expect(entity).to_not be_valid
  end

  it 'is not valid without an amount' do
    entity.amount = nil
    expect(entity).to_not be_valid
  end

  it 'is not valid without a user_id' do
    entity.user_id = nil
    expect(entity).to_not be_valid
  end
end
