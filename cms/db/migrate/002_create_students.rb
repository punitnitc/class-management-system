class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :rollno
      t.string :course
      t.string :branch
      t.string :sem
      t.integer :year
      t.string :email
      t.integer :mob

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
