class AddTitleToLinks < ActiveRecord::Migration
  def change
    add_column :announcements, :link1_title, :string
    add_column :announcements, :link2_title, :string
  end
end
