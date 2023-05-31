require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'John Doe', email: 'john@example.com', password: 'password') }
  let(:entity1) { Entity.create(name: 'Entity 1', amount: 10) }
  let(:entity2) { Entity.create(name: 'Entity 2', amount: 20) }
  let(:group) { Group.create(name: 'Test Group', icon: 'test-icon', user_id: user.id) }

end
