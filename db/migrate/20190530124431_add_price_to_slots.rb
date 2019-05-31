class AddPriceToSlots < ActiveRecord::Migration[5.2]
  def change
    add_column :slots, :price, :integer
  end
end
