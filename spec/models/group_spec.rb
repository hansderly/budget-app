require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'John Doe') }
  let(:group) { Group.create(name: 'Test Group', icon: 'test-icon', user_id: user.id) }
  let(:entity1) { Entity.create(name: 'Entity 1', amount: 10) }
  let(:entity2) { Entity.create(name: 'Entity 2', amount: 20) }

  describe '#sum_group' do
    context 'when the group has no entities' do
      it 'returns 0' do
        expect(group.sum_group).to eq(0)
      end
    end

    context 'when the group has entities' do
      before do
        group.entities << [entity1, entity2]
      end

      it 'returns the sum of the entities' do
        expect(group.sum_group).to eq(30)
      end
    end
  end
end
