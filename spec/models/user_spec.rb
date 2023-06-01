require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'John Doe', email: 'john@example.com', password: 'password') }

  it 'should have a name' do
    expect(user.name).to eq('John Doe')
  end

  it 'should be a valid user' do
    expect(user).to be_valid
  end

  it 'should be an instance of user' do
    expect(user).to be_an_instance_of(User)
  end
end
