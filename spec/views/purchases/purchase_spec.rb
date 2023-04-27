require 'rails_helper'

RSpec.describe 'purchases/new.html.erb', type: :feature do
  before do
    login_user
    visit groups_path
    click_link @group.name
    click_link 'New Purchase'

    fill_in 'Name', with: 'Test Purchase'
    fill_in 'Amount', with: 10
    click_button 'Create Purchase'
  end

  describe 'shows the page' do
    it 'with all purchases in it' do
      expect(page).to have_content(@purchase.name)
    end

    it 'shows the total amount of money for all purchases' do
      expect(page).to have_content('Total: $')
    end

    it 'shows the amount for that purchase' do
      expect(page).to have_content('$10.0')
    end

    it 'shows the creation button for purchases and entities' do
      expect(page).to have_content('New Purchase')
    end
  end
end
