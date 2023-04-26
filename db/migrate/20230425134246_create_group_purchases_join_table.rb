class CreateGroupPurchasesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :purchases do |t|
      t.index [:group_id, :purchase_id]
      t.index [:purchase_id, :group_id]
    end

    add_foreign_key :groups_purchases, :groups
    add_foreign_key :groups_purchases, :purchases
  end
end