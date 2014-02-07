class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
    	t.string :name 
    	t.string :email 
    	t.string :donation 
    	t.text :message
      t.timestamps
    end
  end
end