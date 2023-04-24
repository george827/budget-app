class AddPurchasesRefToGroupPurchases < ActiveRecord::Migration[7.0]
  def change
    add_reference :group_purchases, :purchases, null: false, foreign_key: true
  end
end
