class CreateGroupPurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :group_purchases do |t|

      t.timestamps
    end
  end
end
