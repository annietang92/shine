class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :date 
      t.string :title 
      t.string :text 
      t.string :link1
      t.string :link2

      t.timestamps
    end
  end
end
