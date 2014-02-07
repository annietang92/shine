class AddRecurringToDonation < ActiveRecord::Migration
  def change
  	add_column :donations, :recurring, :string
  end
end
