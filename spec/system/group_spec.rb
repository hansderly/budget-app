require 'rails_helper'

RSpec.describe Group, type: :system do

  describe 'Group index' do
    let(:user) do
      User.create(id: 1,
                  name: 'Jane Doe',
                  created_at: '2023-05-31 12:14:22.327820000 +0000',
                  updated_at: '2023-05-31 12:14:22.327820000 +0000',
                  email: 'test@gmail.com',
                  password: '111111',
                  )
    end

    let(:group) do
      Group.create(id: 1, name: 'Group 1', icon: 'https://bit.ly/43vRbCR', user_id: user.id)
    end

    let(:entity) do
      Entity.create(id: 1, name: 'Entity 1', amount: 250)
    end

    before :each do
      user.save
      group.save
      entity.save
    end

    it 'signs me in' do
      visit root_path
      click_button 'LOGIN'
      fill_in 'Email', with: 'test@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log In'
      expect(page).to have_content 'Group'
    end

    it 'shows the group name when click on a specific group' do
      visit group_path(group)
      expect(page).to have_content 'Group 1'
    end

    it 'show add entity button when click on a specific group' do
      visit group_path(group)
      expect(page).to have_content 'Add Entity'
    end

  end
end
