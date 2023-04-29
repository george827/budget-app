require 'rails_helper'

RSpec.describe 'Purchases', type: :request do
  before(:example) do
    @user = User.create(email: 'george@gmail.com', password: 'password', password_confirmation: 'password',
                        name: 'George')
    @group = Group.create(name: 'Test Group',
                          icon: 'https://img.freepik.com/premium-vector/grocery-food-cardboard-box-icon-isolated-white-vector-flat-illustration_623508-34.jpg', author_id: @user.id)
    @purchase = Purchase.create(name: 'Test Purchase', amount: 10, author_id: @user.id)
    @group.purchases << @purchase
  end

  describe 'GET /new' do
    it 'returns http success' do
      get new_group_purchase_path(@group)
      expect(response).to have_http_status(:success)
    end
  end
end
