class AddGroupRefToGroupPurchases < ActiveRecord::Migration[7.0]
  def change
    add_reference :group_purchases, :groups, null: false, foreign_key: true
  end
end
