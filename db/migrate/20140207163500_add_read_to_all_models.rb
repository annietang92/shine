class AddReadToAllModels < ActiveRecord::Migration
  def change
  	add_column :mentor_applications, :read, :string
  	add_column :student_applications, :read, :string
  	add_column :donations, :read, :string
  	add_column :messages, :read, :string
  end
end
