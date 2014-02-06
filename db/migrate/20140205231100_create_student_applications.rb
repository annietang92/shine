class CreateStudentApplications < ActiveRecord::Migration
  def change
    create_table :student_applications do |t|
    	t.string :last_name
    	t.string :first_name
    	t.string :phone
    	t.string :email
    	t.string :school
    	t.string :math_teacher
    	t.string :math_teacher_phone
    	t.string :math_teacher_email
    	t.string :parent
    	t.string :parent_number
    	t.string :parent_email
    	t.text :why
    	t.text :grades
    	t.text :dance_experience
    	t.text :extracurricular
    	t.string :favorite_subject
    	t.string :least_favorite_subject
    	t.string :feel
    	t.text :get_to
    	t.text :other_applicants
    	t.text :hear_about
    	t.text :other
    	t.string :signature

      t.timestamps
    end
  end
end
