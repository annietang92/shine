class AddPhoneAndEmailToMentorApp < ActiveRecord::Migration
  def change
  	add_column :mentor_applications, :phone, :string
  	add_column :mentor_applications, :email, :string
  end
end
