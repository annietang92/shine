class CreateMentorApplications < ActiveRecord::Migration
  def change
    create_table :mentor_applications do |t|
    	t.string :last_name
    	t.string :first_name
    	t.text :interest_shine
    	t.string :interest_role
    	t.integer :hours
    	t.string :interview
    	t.string :free_wednesday
    	t.string :free_thurs
      t.timestamps
    end
  end
end
