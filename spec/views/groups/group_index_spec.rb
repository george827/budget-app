require 'rails_helper'

RSpec.describe 'Group index page', type: :feature do
  before do
    login_user
    visit groups_path
  end

  describe 'shows the page' do
    it 'with all groups in it' do
      expect(page).to have_content(@group.name)
    end

    it 'shows the total amount of money for all groups' do
      expect(page).to have_content('Total: $')
    end

    it 'shows the creation button for groups and entities' do
      expect(page).to have_content('Add Item')
    end
  end
end
