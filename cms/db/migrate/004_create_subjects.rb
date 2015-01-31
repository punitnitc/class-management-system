class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string :subname
      t.string :subcode
      t.integer :totalclass

      t.timestamps
    end
  end

  def self.down
    drop_table :subjects
  end
end
