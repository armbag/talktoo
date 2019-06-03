class AddPriceToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_monetize :meetings, :price, currency: { present: false }
  end
end
