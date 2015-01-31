class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :id
      t.string :pwd
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :mob

      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
