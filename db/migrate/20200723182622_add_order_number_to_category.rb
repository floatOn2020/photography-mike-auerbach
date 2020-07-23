class AddOrderNumberToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :order_number, :integer
  end
end
